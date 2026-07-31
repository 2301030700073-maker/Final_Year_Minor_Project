package androidx.compose.ui.window;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.compose.ui.viewinterop.ViewFactoryHolder;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;
import java.util.WeakHashMap;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DialogLayout extends AbstractComposeView implements OnApplyWindowInsetsListener {
    public final ParcelableSnapshotMutableState content$delegate;
    public boolean decorFitsSystemWindows;
    public boolean hasCalledSetLayout;
    public boolean shouldCreateCompositionOnAttachedToWindow;
    public boolean usePlatformDefaultWidth;
    public final Window window;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.compose.ui.window.DialogLayout$1, reason: invalid class name */
    public final class AnonymousClass1 extends WindowInsetsAnimationCompat.Callback {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ ViewGroup this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(ViewGroup viewGroup, int i) {
            super(1);
            this.$r8$classId = i;
            this.this$0 = viewGroup;
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
        public final WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
            int i = this.$r8$classId;
            ViewGroup viewGroup = this.this$0;
            switch (i) {
                case 0:
                    DialogLayout dialogLayout = (DialogLayout) viewGroup;
                    if (dialogLayout.decorFitsSystemWindows) {
                        return windowInsetsCompat;
                    }
                    View childAt = dialogLayout.getChildAt(0);
                    int max = Math.max(0, childAt.getLeft());
                    int max2 = Math.max(0, childAt.getTop());
                    int max3 = Math.max(0, dialogLayout.getWidth() - childAt.getRight());
                    int max4 = Math.max(0, dialogLayout.getHeight() - childAt.getBottom());
                    return (max == 0 && max2 == 0 && max3 == 0 && max4 == 0) ? windowInsetsCompat : windowInsetsCompat.mImpl.inset(max, max2, max3, max4);
                default:
                    return ((ViewFactoryHolder) viewGroup).insetToLayoutPosition(windowInsetsCompat);
            }
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
        public final WeakCache onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WeakCache weakCache) {
            int i = this.$r8$classId;
            int i2 = 15;
            ViewGroup viewGroup = this.this$0;
            switch (i) {
                case 0:
                    DialogLayout dialogLayout = (DialogLayout) viewGroup;
                    if (dialogLayout.decorFitsSystemWindows) {
                        return weakCache;
                    }
                    View childAt = dialogLayout.getChildAt(0);
                    int max = Math.max(0, childAt.getLeft());
                    int max2 = Math.max(0, childAt.getTop());
                    int max3 = Math.max(0, dialogLayout.getWidth() - childAt.getRight());
                    int max4 = Math.max(0, dialogLayout.getHeight() - childAt.getBottom());
                    if (max == 0 && max2 == 0 && max3 == 0 && max4 == 0) {
                        return weakCache;
                    }
                    Insets of = Insets.of(max, max2, max3, max4);
                    int i3 = of.left;
                    Insets insets = (Insets) weakCache.values;
                    int i4 = of.top;
                    int i5 = of.right;
                    int i6 = of.bottom;
                    return new WeakCache(i2, WindowInsetsCompat.insetInsets(insets, i3, i4, i5, i6), WindowInsetsCompat.insetInsets((Insets) weakCache.referenceQueue, i3, i4, i5, i6));
                default:
                    InnerNodeCoordinator innerNodeCoordinator = (InnerNodeCoordinator) ((ViewFactoryHolder) viewGroup).layoutNode.nodes.innerCoordinator;
                    if (!innerNodeCoordinator.tail.isAttached) {
                        return weakCache;
                    }
                    long m760roundk4lQ0M = IntOffsetKt.m760roundk4lQ0M(innerNodeCoordinator.mo579localToRootMKHz9U(0L));
                    int i7 = (int) (m760roundk4lQ0M >> 32);
                    if (i7 < 0) {
                        i7 = 0;
                    }
                    int i8 = (int) (m760roundk4lQ0M & 4294967295L);
                    if (i8 < 0) {
                        i8 = 0;
                    }
                    long mo576getSizeYbymL2g = RulerKt.findRootCoordinates(innerNodeCoordinator).mo576getSizeYbymL2g();
                    int i9 = (int) (mo576getSizeYbymL2g >> 32);
                    int i10 = (int) (mo576getSizeYbymL2g & 4294967295L);
                    long j = innerNodeCoordinator.measuredSize;
                    long m760roundk4lQ0M2 = IntOffsetKt.m760roundk4lQ0M(innerNodeCoordinator.mo579localToRootMKHz9U((Float.floatToRawIntBits((int) (j >> 32)) << 32) | (Float.floatToRawIntBits((int) (j & 4294967295L)) & 4294967295L)));
                    int i11 = i9 - ((int) (m760roundk4lQ0M2 >> 32));
                    if (i11 < 0) {
                        i11 = 0;
                    }
                    int i12 = i10 - ((int) (m760roundk4lQ0M2 & 4294967295L));
                    int i13 = i12 >= 0 ? i12 : 0;
                    return (i7 == 0 && i8 == 0 && i11 == 0 && i13 == 0) ? weakCache : new WeakCache(i2, AndroidViewHolder.inset((Insets) weakCache.values, i7, i8, i11, i13), AndroidViewHolder.inset((Insets) weakCache.referenceQueue, i7, i8, i11, i13));
            }
        }
    }

    public DialogLayout(Context context, Window window) {
        super(context);
        this.window = window;
        this.content$delegate = Updater.mutableStateOf$default(ComposableSingletons$AndroidDialog_androidKt.lambda$210148896);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(this, this);
        ViewCompat.setWindowInsetsAnimationCallback(this, new AnonymousClass1(this, 0));
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final void Content(Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1735448596);
        int i2 = (gapComposer.changedInstance(this) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            ((Function2) this.content$delegate.getValue()).invoke(gapComposer, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new PopupLayout$Content$4(this, i, 7);
        }
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.shouldCreateCompositionOnAttachedToWindow;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final void internalOnLayout$ui(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int measuredWidth = childAt.getMeasuredWidth();
        int measuredHeight = childAt.getMeasuredHeight();
        int paddingLeft = (((i5 - measuredWidth) - paddingRight) / 2) + getPaddingLeft();
        int paddingTop = (((i6 - measuredHeight) - paddingBottom) / 2) + getPaddingTop();
        childAt.layout(paddingLeft, paddingTop, measuredWidth + paddingLeft, measuredHeight + paddingTop);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0088  */
    @Override // androidx.compose.ui.platform.AbstractComposeView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void internalOnMeasure$ui(int r13, int r14) {
        /*
            r12 = this;
            r0 = 0
            android.view.View r1 = r12.getChildAt(r0)
            if (r1 != 0) goto Lb
            super.internalOnMeasure$ui(r13, r14)
            return
        Lb:
            int r2 = android.view.View.MeasureSpec.getSize(r13)
            int r3 = android.view.View.MeasureSpec.getSize(r14)
            int r4 = android.view.View.MeasureSpec.getMode(r14)
            r5 = -2
            android.view.Window r6 = r12.window
            r7 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r4 != r7) goto L49
            boolean r8 = r12.usePlatformDefaultWidth
            if (r8 != 0) goto L49
            android.view.WindowManager$LayoutParams r8 = r6.getAttributes()
            int r8 = r8.height
            if (r8 != r5) goto L49
            boolean r8 = r12.decorFitsSystemWindows
            if (r8 == 0) goto L46
            int r8 = android.os.Build.VERSION.SDK_INT
            r9 = 30
            if (r8 >= r9) goto L3b
            androidx.compose.ui.window.Api21Impl r8 = androidx.compose.ui.window.Api21Impl.INSTANCE
            int r8 = r8.getMaxDialogHeightExcludingSystemBarInsets(r6)
            goto L4a
        L3b:
            r9 = 32
            if (r8 >= r9) goto L49
            androidx.compose.ui.window.Api30Impl r8 = androidx.compose.ui.window.Api30Impl.INSTANCE
            int r8 = r8.getMaxDialogHeightExcludingSystemBarInsets(r6)
            goto L4a
        L46:
            int r8 = r3 + 1
            goto L4a
        L49:
            r8 = r3
        L4a:
            int r9 = r12.getPaddingLeft()
            int r10 = r12.getPaddingRight()
            int r10 = r10 + r9
            int r9 = r12.getPaddingTop()
            int r11 = r12.getPaddingBottom()
            int r11 = r11 + r9
            int r9 = r2 - r10
            if (r9 >= 0) goto L61
            r9 = r0
        L61:
            int r8 = r8 - r11
            if (r8 >= 0) goto L65
            goto L66
        L65:
            r0 = r8
        L66:
            int r8 = android.view.View.MeasureSpec.getMode(r13)
            if (r8 != 0) goto L6d
            goto L71
        L6d:
            int r13 = android.view.View.MeasureSpec.makeMeasureSpec(r9, r7)
        L71:
            if (r4 != 0) goto L74
            goto L78
        L74:
            int r14 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r7)
        L78:
            r1.measure(r13, r14)
            r13 = 1073741824(0x40000000, float:2.0)
            if (r8 == r7) goto L88
            if (r8 == r13) goto L91
            int r14 = r1.getMeasuredWidth()
            int r2 = r14 + r10
            goto L91
        L88:
            int r14 = r1.getMeasuredWidth()
            int r14 = r14 + r10
            int r2 = java.lang.Math.min(r2, r14)
        L91:
            if (r4 == r7) goto L9d
            if (r4 == r13) goto L9b
            int r13 = r1.getMeasuredHeight()
            int r13 = r13 + r11
            goto La6
        L9b:
            r13 = r3
            goto La6
        L9d:
            int r13 = r1.getMeasuredHeight()
            int r13 = r13 + r11
            int r13 = java.lang.Math.min(r3, r13)
        La6:
            r12.setMeasuredDimension(r2, r13)
            boolean r13 = r12.decorFitsSystemWindows
            if (r13 != 0) goto Lc7
            int r13 = r1.getMeasuredHeight()
            int r13 = r13 + r11
            if (r13 <= r3) goto Lc7
            android.view.WindowManager$LayoutParams r13 = r6.getAttributes()
            int r13 = r13.height
            if (r13 != r5) goto Lc7
            r6.addFlags(r7)
            boolean r12 = r12.usePlatformDefaultWidth
            if (r12 != 0) goto Lc7
            r12 = -1
            r6.setLayout(r12, r12)
        Lc7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.window.DialogLayout.internalOnMeasure$ui(int, int):void");
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        if (!this.decorFitsSystemWindows) {
            View childAt = getChildAt(0);
            int max = Math.max(0, childAt.getLeft());
            int max2 = Math.max(0, childAt.getTop());
            int max3 = Math.max(0, getWidth() - childAt.getRight());
            int max4 = Math.max(0, getHeight() - childAt.getBottom());
            if (max != 0 || max2 != 0 || max3 != 0 || max4 != 0) {
                return windowInsetsCompat.mImpl.inset(max, max2, max3, max4);
            }
        }
        return windowInsetsCompat;
    }
}
