<?php

// autoload_real.php @generated by Composer

class ComposerAutoloaderInit27ce3bdaf00e0e069b8bb59f6e0ffb68
{
    private static $loader;

    public static function loadClassLoader($class)
    {
        if ('Composer\Autoload\ClassLoader' === $class) {
            require __DIR__ . '/ClassLoader.php';
        }
    }

    /**
     * @return \Composer\Autoload\ClassLoader
     */
    public static function getLoader()
    {
        if (null !== self::$loader) {
            return self::$loader;
        }

        spl_autoload_register(array('ComposerAutoloaderInit27ce3bdaf00e0e069b8bb59f6e0ffb68', 'loadClassLoader'), true, true);
        self::$loader = $loader = new \Composer\Autoload\ClassLoader(\dirname(__DIR__));
        spl_autoload_unregister(array('ComposerAutoloaderInit27ce3bdaf00e0e069b8bb59f6e0ffb68', 'loadClassLoader'));

        require __DIR__ . '/autoload_static.php';
        call_user_func(\Composer\Autoload\ComposerStaticInit27ce3bdaf00e0e069b8bb59f6e0ffb68::getInitializer($loader));

        $loader->register(true);

        return $loader;
    }
}
