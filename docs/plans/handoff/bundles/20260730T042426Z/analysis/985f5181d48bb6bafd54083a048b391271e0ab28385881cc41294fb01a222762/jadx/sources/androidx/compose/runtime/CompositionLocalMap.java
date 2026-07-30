package androidx.compose.runtime;

import androidx.compose.runtime.internal.PersistentCompositionLocalMapKt;

/* compiled from: CompositionLocalMap.kt */
/* loaded from: classes.dex */
public interface CompositionLocalMap {
    public static final Companion Companion = Companion.$$INSTANCE;

    Object get(CompositionLocal compositionLocal);

    /* compiled from: CompositionLocalMap.kt */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final CompositionLocalMap Empty = PersistentCompositionLocalMapKt.persistentCompositionLocalHashMapOf();

        private Companion() {
        }

        public final CompositionLocalMap getEmpty() {
            return Empty;
        }
    }
}
