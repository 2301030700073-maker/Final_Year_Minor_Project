package org.mozilla.javascript.commonjs.module.provider;

import com.google.android.exoplayer2.util.Log;
import java.io.File;
import java.io.Serializable;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ModuleSourceProviderBase implements ModuleSourceProvider, Serializable {
    private static final long serialVersionUID = 1;

    private static String ensureTrailingSlash(String str) {
        return str.endsWith("/") ? str : str.concat("/");
    }

    private ModuleSource loadFromPathArray(String str, Scriptable scriptable, Object obj) {
        long uint32 = ScriptRuntime.toUint32(ScriptableObject.getProperty(scriptable, "length"));
        int i = uint32 > 2147483647L ? Log.LOG_LEVEL_OFF : (int) uint32;
        for (int i2 = 0; i2 < i; i2++) {
            String ensureTrailingSlash = ensureTrailingSlash((String) ScriptableObject.getTypedProperty(scriptable, i2, String.class));
            try {
                URI uri = new URI(ensureTrailingSlash);
                if (!uri.isAbsolute()) {
                    uri = new File(ensureTrailingSlash).toURI().resolve("");
                }
                ModuleSource loadFromUri = loadFromUri(uri.resolve(str), uri, obj);
                if (loadFromUri != null) {
                    return loadFromUri;
                }
            } catch (URISyntaxException e) {
                throw new MalformedURLException(e.getMessage());
            }
        }
        return null;
    }

    public boolean entityNeedsRevalidation(Object obj) {
        return true;
    }

    public ModuleSource loadFromFallbackLocations(String str, Object obj) {
        return null;
    }

    public ModuleSource loadFromPrivilegedLocations(String str, Object obj) {
        return null;
    }

    public abstract ModuleSource loadFromUri(URI uri, URI uri2, Object obj);

    @Override // org.mozilla.javascript.commonjs.module.provider.ModuleSourceProvider
    public ModuleSource loadSource(String str, Scriptable scriptable, Object obj) {
        ModuleSource loadFromPathArray;
        if (!entityNeedsRevalidation(obj)) {
            return ModuleSourceProvider.NOT_MODIFIED;
        }
        ModuleSource loadFromPrivilegedLocations = loadFromPrivilegedLocations(str, obj);
        return loadFromPrivilegedLocations != null ? loadFromPrivilegedLocations : (scriptable == null || (loadFromPathArray = loadFromPathArray(str, scriptable, obj)) == null) ? loadFromFallbackLocations(str, obj) : loadFromPathArray;
    }

    @Override // org.mozilla.javascript.commonjs.module.provider.ModuleSourceProvider
    public ModuleSource loadSource(URI uri, URI uri2, Object obj) {
        return loadFromUri(uri, uri2, obj);
    }
}
