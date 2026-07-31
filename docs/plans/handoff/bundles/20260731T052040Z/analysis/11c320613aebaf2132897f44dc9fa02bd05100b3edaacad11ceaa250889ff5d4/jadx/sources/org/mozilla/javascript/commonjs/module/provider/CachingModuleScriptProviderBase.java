package org.mozilla.javascript.commonjs.module.provider;

import java.io.Reader;
import java.io.Serializable;
import java.net.URI;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.commonjs.module.ModuleScript;
import org.mozilla.javascript.commonjs.module.ModuleScriptProvider;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class CachingModuleScriptProviderBase implements ModuleScriptProvider, Serializable {
    private static final int loadConcurrencyLevel = Runtime.getRuntime().availableProcessors() * 8;
    private static final int loadLockCount;
    private static final int loadLockMask;
    private static final int loadLockShift;
    private static final long serialVersionUID = -1;
    private final Object[] loadLocks = new Object[loadLockCount];
    private final ModuleSourceProvider moduleSourceProvider;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class CachedModuleScript {
        private final ModuleScript moduleScript;
        private final Object validator;

        public CachedModuleScript(ModuleScript moduleScript, Object obj) {
            this.moduleScript = moduleScript;
            this.validator = obj;
        }

        public ModuleScript getModule() {
            return this.moduleScript;
        }

        public Object getValidator() {
            return this.validator;
        }
    }

    static {
        int i = 0;
        int i2 = 1;
        while (i2 < loadConcurrencyLevel) {
            i++;
            i2 <<= 1;
        }
        loadLockShift = 32 - i;
        loadLockMask = i2 - 1;
        loadLockCount = i2;
    }

    public CachingModuleScriptProviderBase(ModuleSourceProvider moduleSourceProvider) {
        int i = 0;
        while (true) {
            Object[] objArr = this.loadLocks;
            if (i >= objArr.length) {
                this.moduleSourceProvider = moduleSourceProvider;
                return;
            } else {
                objArr[i] = new Object();
                i++;
            }
        }
    }

    private static boolean equal(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static int getConcurrencyLevel() {
        return loadLockCount;
    }

    private static Object getValidator(CachedModuleScript cachedModuleScript) {
        if (cachedModuleScript == null) {
            return null;
        }
        return cachedModuleScript.getValidator();
    }

    public abstract CachedModuleScript getLoadedModule(String str);

    @Override // org.mozilla.javascript.commonjs.module.ModuleScriptProvider
    public ModuleScript getModuleScript(Context context, String str, URI uri, URI uri2, Scriptable scriptable) {
        CachedModuleScript loadedModule = getLoadedModule(str);
        Object validator = getValidator(loadedModule);
        ModuleSourceProvider moduleSourceProvider = this.moduleSourceProvider;
        ModuleSource loadSource = uri == null ? moduleSourceProvider.loadSource(str, scriptable, validator) : moduleSourceProvider.loadSource(uri, uri2, validator);
        if (loadSource == ModuleSourceProvider.NOT_MODIFIED) {
            return loadedModule.getModule();
        }
        if (loadSource == null) {
            return null;
        }
        Reader reader = loadSource.getReader();
        try {
            synchronized (this.loadLocks[(str.hashCode() >>> loadLockShift) & loadLockMask]) {
                CachedModuleScript loadedModule2 = getLoadedModule(str);
                if (loadedModule2 != null && !equal(validator, getValidator(loadedModule2))) {
                    ModuleScript module = loadedModule2.getModule();
                    if (reader != null) {
                        reader.close();
                    }
                    return module;
                }
                URI uri3 = loadSource.getUri();
                ModuleScript moduleScript = new ModuleScript(context.compileReader(reader, uri3.toString(), 1, loadSource.getSecurityDomain()), uri3, loadSource.getBase());
                putLoadedModule(str, moduleScript, loadSource.getValidator());
                if (reader != null) {
                    reader.close();
                }
                return moduleScript;
            }
        } catch (Throwable th) {
            if (reader != null) {
                try {
                    reader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public abstract void putLoadedModule(String str, ModuleScript moduleScript, Object obj);
}
