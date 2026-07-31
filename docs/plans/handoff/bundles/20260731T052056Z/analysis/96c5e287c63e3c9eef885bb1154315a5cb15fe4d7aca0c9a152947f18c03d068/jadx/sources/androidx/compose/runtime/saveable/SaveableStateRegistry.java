package androidx.compose.runtime.saveable;

import java.util.Map;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface SaveableStateRegistry {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Entry {
    }

    boolean canBeSaved(Object obj);

    Object consumeRestored(String str);

    Map performSave();

    Entry registerProvider(String str, Function0 function0);
}
