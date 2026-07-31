package org.mozilla.javascript.commonjs.module.provider;

import java.net.URI;
import org.mozilla.javascript.Scriptable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface ModuleSourceProvider {
    public static final ModuleSource NOT_MODIFIED = new ModuleSource(null, null, null, null, null);

    ModuleSource loadSource(String str, Scriptable scriptable, Object obj);

    ModuleSource loadSource(URI uri, URI uri2, Object obj);
}
