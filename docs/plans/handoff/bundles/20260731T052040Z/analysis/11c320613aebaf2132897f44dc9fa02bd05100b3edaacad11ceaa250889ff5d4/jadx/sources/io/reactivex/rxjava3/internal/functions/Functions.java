package io.reactivex.rxjava3.internal.functions;

import android.os.Trace;
import androidx.core.os.TraceCompat;
import androidx.emoji2.text.EmojiCompat;
import androidx.transition.Transition;
import io.noties.markwon.BlockHandlerDef;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
import okio.ByteString;
import okio.Path;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Functions {
    public static final Transition.AnonymousClass1 EMPTY_ACTION;
    public static final BlockHandlerDef EMPTY_CONSUMER;
    public static final Path.Companion IDENTITY = new Path.Companion(1);
    public static final EmptyRunnable EMPTY_RUNNABLE = new EmptyRunnable(0);
    public static final ByteString.Companion ON_ERROR_MISSING = new ByteString.Companion(1);
    public static final ByteString.Companion EQUALS = new ByteString.Companion(2);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class JustValue implements Callable, Supplier, Function {
        public final Exception value;

        public JustValue(Exception exc) {
            this.value = exc;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public final Object apply(Object obj) {
            return this.value;
        }

        @Override // java.util.concurrent.Callable
        public final Object call() {
            return this.value;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        public final Object get() {
            return this.value;
        }
    }

    static {
        int i = 29;
        EMPTY_ACTION = new Transition.AnonymousClass1(i);
        EMPTY_CONSUMER = new BlockHandlerDef(i);
    }

    public static void verifyPositive(int i, String str) {
        if (i > 0) {
            return;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class EmptyRunnable implements Runnable {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ EmptyRunnable(int i) {
            this.$r8$classId = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (this.$r8$classId) {
                case 0:
                    return;
                case 1:
                    try {
                        Method method = TraceCompat.sIsTagEnabledMethod;
                        Trace.beginSection("EmojiCompat.EmojiCompatInitializer.run");
                        if (EmojiCompat.isConfigured()) {
                            EmojiCompat.get().load();
                        }
                        Trace.endSection();
                        return;
                    } catch (Throwable th) {
                        Method method2 = TraceCompat.sIsTagEnabledMethod;
                        Trace.endSection();
                        throw th;
                    }
                default:
                    return;
            }
        }

        public String toString() {
            switch (this.$r8$classId) {
                case 0:
                    return "EmptyRunnable";
                default:
                    return super.toString();
            }
        }

        private final void run$com$google$common$util$concurrent$InterruptibleTask$DoNothingRunnable() {
        }

        private final void run$io$reactivex$rxjava3$internal$functions$Functions$EmptyRunnable() {
        }
    }
}
