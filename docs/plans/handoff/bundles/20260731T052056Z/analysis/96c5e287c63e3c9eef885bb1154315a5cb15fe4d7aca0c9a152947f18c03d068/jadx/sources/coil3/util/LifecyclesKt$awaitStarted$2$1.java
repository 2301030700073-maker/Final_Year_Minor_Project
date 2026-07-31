package coil3.util;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.emoji2.text.ConcurrencyHelpers$Handler28Impl;
import androidx.emoji2.text.EmojiCompatInitializer;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import kotlin.Unit;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LifecyclesKt$awaitStarted$2$1 implements DefaultLifecycleObserver {
    public final /* synthetic */ Object $continuation;
    public final /* synthetic */ int $r8$classId = 1;

    public LifecyclesKt$awaitStarted$2$1(CancellableContinuationImpl cancellableContinuationImpl) {
        this.$continuation = cancellableContinuationImpl;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onCreate(LifecycleOwner lifecycleOwner) {
        int i = this.$r8$classId;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        int i = this.$r8$classId;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onPause(LifecycleOwner lifecycleOwner) {
        int i = this.$r8$classId;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onResume(LifecycleOwner lifecycleOwner) {
        switch (this.$r8$classId) {
            case 0:
                break;
            default:
                (Build.VERSION.SDK_INT >= 28 ? ConcurrencyHelpers$Handler28Impl.createAsync(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new EmojiCompatInitializer.LoadEmojiCompatRunnable(), 500L);
                ((LifecycleRegistry) this.$continuation).removeObserver(this);
                break;
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStart(LifecycleOwner lifecycleOwner) {
        switch (this.$r8$classId) {
            case 0:
                ((CancellableContinuationImpl) this.$continuation).resumeWith(Unit.INSTANCE);
                break;
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStop(LifecycleOwner lifecycleOwner) {
        int i = this.$r8$classId;
    }

    public LifecyclesKt$awaitStarted$2$1(EmojiCompatInitializer emojiCompatInitializer, LifecycleRegistry lifecycleRegistry) {
        this.$continuation = lifecycleRegistry;
    }

    private final void onCreate$androidx$emoji2$text$EmojiCompatInitializer$1(LifecycleOwner lifecycleOwner) {
    }

    private final void onCreate$coil3$util$LifecyclesKt$awaitStarted$2$1(LifecycleOwner lifecycleOwner) {
    }

    private final void onDestroy$androidx$emoji2$text$EmojiCompatInitializer$1(LifecycleOwner lifecycleOwner) {
    }

    private final void onDestroy$coil3$util$LifecyclesKt$awaitStarted$2$1(LifecycleOwner lifecycleOwner) {
    }

    private final void onPause$androidx$emoji2$text$EmojiCompatInitializer$1(LifecycleOwner lifecycleOwner) {
    }

    private final void onPause$coil3$util$LifecyclesKt$awaitStarted$2$1(LifecycleOwner lifecycleOwner) {
    }

    private final void onResume$coil3$util$LifecyclesKt$awaitStarted$2$1(LifecycleOwner lifecycleOwner) {
    }

    private final void onStart$androidx$emoji2$text$EmojiCompatInitializer$1(LifecycleOwner lifecycleOwner) {
    }

    private final void onStop$androidx$emoji2$text$EmojiCompatInitializer$1(LifecycleOwner lifecycleOwner) {
    }

    private final void onStop$coil3$util$LifecyclesKt$awaitStarted$2$1(LifecycleOwner lifecycleOwner) {
    }
}
