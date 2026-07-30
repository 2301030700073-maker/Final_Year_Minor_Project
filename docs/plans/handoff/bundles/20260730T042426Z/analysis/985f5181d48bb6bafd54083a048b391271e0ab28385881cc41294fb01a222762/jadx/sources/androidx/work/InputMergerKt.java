package androidx.work;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: InputMerger.kt */
/* loaded from: classes.dex */
public abstract class InputMergerKt {
    private static final String TAG;

    static {
        String tagWithPrefix = Logger.tagWithPrefix("InputMerger");
        Intrinsics.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"InputMerger\")");
        TAG = tagWithPrefix;
    }

    public static final InputMerger fromClassName(String className) {
        Intrinsics.checkNotNullParameter(className, "className");
        try {
            Object newInstance = Class.forName(className).getDeclaredConstructor(null).newInstance(null);
            Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type androidx.work.InputMerger");
            return (InputMerger) newInstance;
        } catch (Exception e) {
            Logger.get().error(TAG, "Trouble instantiating " + className, e);
            return null;
        }
    }
}
