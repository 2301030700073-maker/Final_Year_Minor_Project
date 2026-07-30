package androidx.compose.runtime;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Composer.kt */
/* loaded from: classes.dex */
public abstract class Updater {
    /* renamed from: constructor-impl, reason: not valid java name */
    public static Composer m1043constructorimpl(Composer composer) {
        return composer;
    }

    /* renamed from: set-impl, reason: not valid java name */
    public static final void m1044setimpl(Composer composer, Object obj, Function2 function2) {
        if (composer.getInserting() || !Intrinsics.areEqual(composer.rememberedValue(), obj)) {
            composer.updateRememberedValue(obj);
            composer.apply(obj, function2);
        }
    }
}
