# Examples on make clean

This repository illustrates a way to clean non-buildable targets for better reliability.

To understand the issue it solves, you can run the following:

```bash
$> git checkout master
$> make
$> ls bin
bin/prog1
$> git checkout add-prog2
$> make
$> ls bin
bin/prog1 bin/prog2
$> git checkout master
$> make clean && make
$> ls bin
bin/prog1 bin/prog2
```

As we can see, prog2 can only be cleaned in the `add-prog2` branch.

Now, run the following script:

```bash
$> git clean -dxf
$> git checkout cleanup
$> make
$> ls bin
bin/prog1
$> git checkout cleanup-add-prog2
$> make
$> ls bin
bin/prog1 bin/prog2
$> git checkout cleanup
$> make clean && make
$> ls bin
bin/prog1
```

As we can see, this time, all non-buildable targets have been removed from the source tree, improving development reliability
