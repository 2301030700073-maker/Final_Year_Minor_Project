package androidx.compose.ui.viewinterop;

import android.view.View;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.platform.AbstractComposeView;
import com.caverock.androidsvg.SVG;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewFactoryHolder extends AndroidViewHolder {
    public final NestedScrollDispatcher dispatcher;
    public Function1 releaseBlock;
    public Function1 resetBlock;
    public SaveableStateRegistry.Entry savableRegistryEntry;
    public final View typedView;
    public Function1 updateBlock;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ViewFactoryHolder(android.content.Context r8, kotlin.jvm.functions.Function1 r9, androidx.compose.runtime.GapComposer.CompositionContextImpl r10, androidx.compose.runtime.saveable.SaveableStateRegistry r11, int r12, androidx.compose.ui.node.Owner r13) {
        /*
            r7 = this;
            java.lang.Object r9 = r9.invoke(r8)
            r5 = r9
            android.view.View r5 = (android.view.View) r5
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher r4 = new androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher
            r4.<init>()
            r0 = r7
            r1 = r8
            r2 = r10
            r3 = r12
            r6 = r13
            r0.<init>(r1, r2, r3, r4, r5, r6)
            r0.typedView = r5
            r0.dispatcher = r4
            r7 = 0
            r0.setClipChildren(r7)
            java.lang.String r7 = java.lang.String.valueOf(r3)
            r8 = 0
            if (r11 == 0) goto L28
            java.lang.Object r9 = r11.consumeRestored(r7)
            goto L29
        L28:
            r9 = r8
        L29:
            boolean r10 = r9 instanceof android.util.SparseArray
            if (r10 == 0) goto L30
            r8 = r9
            android.util.SparseArray r8 = (android.util.SparseArray) r8
        L30:
            if (r8 == 0) goto L35
            r5.restoreHierarchyState(r8)
        L35:
            if (r11 == 0) goto L44
            androidx.compose.ui.viewinterop.AndroidViewHolder$runUpdate$1 r8 = new androidx.compose.ui.viewinterop.AndroidViewHolder$runUpdate$1
            r9 = 2
            r8.<init>(r0, r9)
            androidx.compose.runtime.saveable.SaveableStateRegistry$Entry r7 = r11.registerProvider(r7, r8)
            r0.setSavableRegistryEntry(r7)
        L44:
            androidx.compose.ui.viewinterop.AndroidView_androidKt$NoOpUpdate$1 r7 = androidx.compose.ui.viewinterop.AndroidView_androidKt$NoOpUpdate$1.INSTANCE
            r0.updateBlock = r7
            r0.resetBlock = r7
            r0.releaseBlock = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.viewinterop.ViewFactoryHolder.<init>(android.content.Context, kotlin.jvm.functions.Function1, androidx.compose.runtime.GapComposer$CompositionContextImpl, androidx.compose.runtime.saveable.SaveableStateRegistry, int, androidx.compose.ui.node.Owner):void");
    }

    private final void setSavableRegistryEntry(SaveableStateRegistry.Entry entry) {
        SaveableStateRegistry.Entry entry2 = this.savableRegistryEntry;
        if (entry2 != null) {
            ((SVG) entry2).unregister();
        }
        this.savableRegistryEntry = entry;
    }

    public final NestedScrollDispatcher getDispatcher() {
        return this.dispatcher;
    }

    public final Function1 getReleaseBlock() {
        return this.releaseBlock;
    }

    public final Function1 getResetBlock() {
        return this.resetBlock;
    }

    public AbstractComposeView getSubCompositionView() {
        return null;
    }

    public final Function1 getUpdateBlock() {
        return this.updateBlock;
    }

    public final void setReleaseBlock(Function1 function1) {
        this.releaseBlock = function1;
        setRelease(new AndroidViewHolder$runUpdate$1(this, 3));
    }

    public final void setResetBlock(Function1 function1) {
        this.resetBlock = function1;
        setReset(new AndroidViewHolder$runUpdate$1(this, 4));
    }

    public final void setUpdateBlock(Function1 function1) {
        this.updateBlock = function1;
        setUpdate(new AndroidViewHolder$runUpdate$1(this, 5));
    }

    public final void unregisterSaveStateProvider() {
        setSavableRegistryEntry(null);
    }

    public View getViewRoot() {
        return this;
    }
}
