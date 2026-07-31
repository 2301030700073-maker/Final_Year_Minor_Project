package androidx.datastore.preferences.core;

import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MutablePreferences$toString$1 extends Lambda implements Function1 {
    public static final MutablePreferences$toString$1 INSTANCE = new MutablePreferences$toString$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        entry.getClass();
        return "  " + ((Preferences$Key) entry.getKey()).name + " = " + entry.getValue();
    }
}
