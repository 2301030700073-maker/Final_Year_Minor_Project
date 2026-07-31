package org.slf4j;

import com.fsck.k9.mailstore.LocalFolder;
import com.jcraft.jzlib.Adler32;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.LinkedBlockingQueue;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.slf4j.event.SubstituteLoggingEvent;
import org.slf4j.helpers.NOPLogger;
import org.slf4j.helpers.SubstituteLogger;
import org.slf4j.helpers.Util;
import org.slf4j.impl.StaticLoggerBinder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class LoggerFactory {
    public static final String[] API_COMPATIBILITY_LIST;
    public static final boolean DETECT_LOGGER_NAME_MISMATCH;
    public static volatile int INITIALIZATION_STATE;
    public static final String STATIC_LOGGER_BINDER_PATH;
    public static final LocalFolder.AnonymousClass12 SUBST_FACTORY = new LocalFolder.AnonymousClass12(12);
    public static final Adler32 NOP_FALLBACK_FACTORY = new Adler32(23);

    static {
        String str;
        try {
            str = System.getProperty("slf4j.detectLoggerNameMismatch");
        } catch (SecurityException unused) {
            str = null;
        }
        DETECT_LOGGER_NAME_MISMATCH = str == null ? false : str.equalsIgnoreCase("true");
        API_COMPATIBILITY_LIST = new String[]{"1.6", "1.7"};
        STATIC_LOGGER_BINDER_PATH = "org/slf4j/impl/StaticLoggerBinder.class";
    }

    public static final void bind() {
        LinkedHashSet linkedHashSet;
        try {
            try {
                try {
                    if (isAndroid()) {
                        linkedHashSet = null;
                    } else {
                        linkedHashSet = findPossibleStaticLoggerBinderPathSet();
                        reportMultipleBindingAmbiguity(linkedHashSet);
                    }
                    StaticLoggerBinder.getSingleton();
                    INITIALIZATION_STATE = 3;
                    reportActualBinding(linkedHashSet);
                    postBindCleanUp();
                } catch (NoClassDefFoundError e) {
                    String message = e.getMessage();
                    if (message == null || (!message.contains("org/slf4j/impl/StaticLoggerBinder") && !message.contains("org.slf4j.impl.StaticLoggerBinder"))) {
                        INITIALIZATION_STATE = 2;
                        System.err.println("Failed to instantiate SLF4J LoggerFactory");
                        System.err.println("Reported exception:");
                        e.printStackTrace();
                        throw e;
                    }
                    INITIALIZATION_STATE = 4;
                    Util.report("Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".");
                    Util.report("Defaulting to no-operation (NOP) logger implementation");
                    Util.report("See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.");
                    postBindCleanUp();
                }
            } catch (Exception e2) {
                INITIALIZATION_STATE = 2;
                System.err.println("Failed to instantiate SLF4J LoggerFactory");
                System.err.println("Reported exception:");
                e2.printStackTrace();
                throw new IllegalStateException("Unexpected initialization failure", e2);
            } catch (NoSuchMethodError e3) {
                String message2 = e3.getMessage();
                if (message2 != null && message2.contains("org.slf4j.impl.StaticLoggerBinder.getSingleton()")) {
                    INITIALIZATION_STATE = 2;
                    Util.report("slf4j-api 1.6.x (or later) is incompatible with this binding.");
                    Util.report("Your binding is version 1.5.5 or earlier.");
                    Util.report("Upgrade your binding to version 1.6.x.");
                }
                throw e3;
            }
        } catch (Throwable th) {
            postBindCleanUp();
            throw th;
        }
    }

    public static LinkedHashSet findPossibleStaticLoggerBinderPathSet() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        try {
            ClassLoader classLoader = LoggerFactory.class.getClassLoader();
            String str = STATIC_LOGGER_BINDER_PATH;
            Enumeration<URL> systemResources = classLoader == null ? ClassLoader.getSystemResources(str) : classLoader.getResources(str);
            while (systemResources.hasMoreElements()) {
                linkedHashSet.add(systemResources.nextElement());
            }
            return linkedHashSet;
        } catch (IOException e) {
            System.err.println("Error getting resources from path");
            System.err.println("Reported exception:");
            e.printStackTrace();
            return linkedHashSet;
        }
    }

    public static ILoggerFactory getILoggerFactory() {
        if (INITIALIZATION_STATE == 0) {
            synchronized (LoggerFactory.class) {
                try {
                    if (INITIALIZATION_STATE == 0) {
                        INITIALIZATION_STATE = 1;
                        bind();
                        if (INITIALIZATION_STATE == 3) {
                            versionSanityCheck();
                        }
                    }
                } finally {
                }
            }
        }
        int i = INITIALIZATION_STATE;
        if (i == 1) {
            return SUBST_FACTORY;
        }
        if (i == 2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit");
            return null;
        }
        if (i == 3) {
            return StaticLoggerBinder.getSingleton().getLoggerFactory();
        }
        if (i == 4) {
            return NOP_FALLBACK_FACTORY;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unreachable code");
        return null;
    }

    public static Logger getLogger(String str) {
        return getILoggerFactory().getLogger(str);
    }

    public static boolean isAndroid() {
        String str;
        try {
            str = System.getProperty("java.vendor.url");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str == null) {
            return false;
        }
        return str.toLowerCase().contains("android");
    }

    public static void postBindCleanUp() {
        LocalFolder.AnonymousClass12 anonymousClass12 = SUBST_FACTORY;
        synchronized (anonymousClass12) {
            try {
                anonymousClass12.val$value = true;
                Iterator it = new ArrayList(((HashMap) anonymousClass12.val$messages).values()).iterator();
                while (it.hasNext()) {
                    SubstituteLogger substituteLogger = (SubstituteLogger) it.next();
                    substituteLogger._delegate = getLogger(substituteLogger.name);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        LinkedBlockingQueue linkedBlockingQueue = (LinkedBlockingQueue) SUBST_FACTORY.val$flags;
        int size = linkedBlockingQueue.size();
        ArrayList arrayList = new ArrayList(128);
        int i = 0;
        while (linkedBlockingQueue.drainTo(arrayList, 128) != 0) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                SubstituteLoggingEvent substituteLoggingEvent = (SubstituteLoggingEvent) it2.next();
                if (substituteLoggingEvent != null) {
                    SubstituteLogger substituteLogger2 = substituteLoggingEvent.logger;
                    String str = substituteLogger2.name;
                    if (substituteLogger2._delegate == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Delegate logger cannot be null at this state.");
                        return;
                    } else if (!(substituteLogger2._delegate instanceof NOPLogger)) {
                        if (!substituteLogger2.isDelegateEventAware()) {
                            Util.report(str);
                        } else if (substituteLogger2.isDelegateEventAware()) {
                            try {
                                substituteLogger2.logMethodCache.invoke(substituteLogger2._delegate, substituteLoggingEvent);
                            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
                            }
                        }
                    }
                }
                int i2 = i + 1;
                if (i == 0) {
                    if (substituteLoggingEvent.logger.isDelegateEventAware()) {
                        Util.report("A number (" + size + ") of logging calls during the initialization phase have been intercepted and are");
                        Util.report("now being replayed. These are subject to the filtering rules of the underlying logging system.");
                        Util.report("See also http://www.slf4j.org/codes.html#replay");
                    } else if (!(substituteLoggingEvent.logger._delegate instanceof NOPLogger)) {
                        Util.report("The following set of substitute loggers may have been accessed");
                        Util.report("during the initialization phase. Logging calls during this");
                        Util.report("phase were not honored. However, subsequent logging calls to these");
                        Util.report("loggers will work as normally expected.");
                        Util.report("See also http://www.slf4j.org/codes.html#substituteLogger");
                    }
                }
                i = i2;
            }
            arrayList.clear();
        }
        LocalFolder.AnonymousClass12 anonymousClass122 = SUBST_FACTORY;
        ((HashMap) anonymousClass122.val$messages).clear();
        ((LinkedBlockingQueue) anonymousClass122.val$flags).clear();
    }

    public static void reportActualBinding(LinkedHashSet linkedHashSet) {
        if (linkedHashSet == null || linkedHashSet.size() <= 1) {
            return;
        }
        Util.report("Actual binding is of type [" + StaticLoggerBinder.getSingleton().getLoggerFactoryClassStr() + "]");
    }

    public static void reportMultipleBindingAmbiguity(LinkedHashSet linkedHashSet) {
        if (linkedHashSet.size() > 1) {
            Util.report("Class path contains multiple SLF4J bindings.");
            Iterator it = linkedHashSet.iterator();
            while (it.hasNext()) {
                Util.report("Found binding in [" + ((URL) it.next()) + "]");
            }
            Util.report("See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
        }
    }

    public static final void versionSanityCheck() {
        try {
            String str = StaticLoggerBinder.REQUESTED_API_VERSION;
            boolean z = false;
            for (String str2 : API_COMPATIBILITY_LIST) {
                if (str.startsWith(str2)) {
                    z = true;
                }
            }
            if (z) {
                return;
            }
            Util.report("The requested version " + str + " by your slf4j binding is not compatible with " + Arrays.asList(API_COMPATIBILITY_LIST).toString());
            Util.report("See http://www.slf4j.org/codes.html#version_mismatch for further details.");
        } catch (NoSuchFieldError unused) {
        } catch (Throwable th) {
            System.err.println("Unexpected problem occured during version sanity check");
            System.err.println("Reported exception:");
            th.printStackTrace();
        }
    }
}
