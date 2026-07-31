package kotlin.coroutines.jvm.internal;

import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ModuleNameRetriever {
    public static ProcessFinisher cache;
    public static final ProcessFinisher notOnJava9;

    static {
        Object obj = null;
        notOnJava9 = new ProcessFinisher(26, obj, obj, obj);
    }
}
