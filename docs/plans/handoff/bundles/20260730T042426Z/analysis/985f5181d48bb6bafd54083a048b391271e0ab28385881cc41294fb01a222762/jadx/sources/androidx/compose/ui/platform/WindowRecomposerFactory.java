package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.platform.WindowRecomposerFactory;

/* compiled from: WindowRecomposer.android.kt */
/* loaded from: classes.dex */
public interface WindowRecomposerFactory {
    public static final Companion Companion = Companion.$$INSTANCE;

    Recomposer createRecomposer(View view);

    /* compiled from: WindowRecomposer.android.kt */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final WindowRecomposerFactory LifecycleAware = new WindowRecomposerFactory() { // from class: androidx.compose.ui.platform.WindowRecomposerFactory$Companion$$ExternalSyntheticLambda0
            @Override // androidx.compose.ui.platform.WindowRecomposerFactory
            public final Recomposer createRecomposer(View view) {
                Recomposer LifecycleAware$lambda$0;
                LifecycleAware$lambda$0 = WindowRecomposerFactory.Companion.LifecycleAware$lambda$0(view);
                return LifecycleAware$lambda$0;
            }
        };

        private Companion() {
        }

        public final WindowRecomposerFactory getLifecycleAware() {
            return LifecycleAware;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Recomposer LifecycleAware$lambda$0(View view) {
            return WindowRecomposer_androidKt.createLifecycleAwareWindowRecomposer$default(view, null, null, 3, null);
        }
    }
}
