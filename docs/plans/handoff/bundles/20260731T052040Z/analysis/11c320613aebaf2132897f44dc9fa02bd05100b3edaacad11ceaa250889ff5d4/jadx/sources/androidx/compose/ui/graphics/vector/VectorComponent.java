package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class VectorComponent extends VNode {
    public final DrawCache cacheDrawScope;
    public final VectorComponent$drawVectorBlock$1 drawVectorBlock;
    public final ParcelableSnapshotMutableState intrinsicColorFilter$delegate;
    public Function0 invalidateCallback;
    public boolean isDirty;
    public String name;
    public long previousDrawSize;
    public final GroupComponent root;
    public float rootScaleX;
    public float rootScaleY;
    public BlendModeColorFilter tintFilter;
    public final ParcelableSnapshotMutableState viewportSize$delegate;

    public VectorComponent(GroupComponent groupComponent) {
        this.root = groupComponent;
        groupComponent.invalidateListener = new Function1() { // from class: androidx.compose.ui.graphics.vector.VectorComponent.1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                VectorComponent vectorComponent = VectorComponent.this;
                vectorComponent.isDirty = true;
                vectorComponent.invalidateCallback.invoke();
                return Unit.INSTANCE;
            }
        };
        this.name = "";
        this.isDirty = true;
        this.cacheDrawScope = new DrawCache();
        this.invalidateCallback = PathComponent$pathMeasure$2.INSTANCE$1;
        this.intrinsicColorFilter$delegate = Updater.mutableStateOf$default(null);
        this.viewportSize$delegate = Updater.mutableStateOf$default(new Size(0L));
        this.previousDrawSize = 9205357640488583168L;
        this.rootScaleX = 1.0f;
        this.rootScaleY = 1.0f;
        this.drawVectorBlock = new VectorComponent$drawVectorBlock$1(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0063, code lost:
    
        if (r3 != r8) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0111, code lost:
    
        if (r9.config == r3) goto L53;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void draw(androidx.compose.ui.graphics.drawscope.DrawScope r31, float r32, androidx.compose.ui.graphics.BlendModeColorFilter r33) {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.vector.VectorComponent.draw(androidx.compose.ui.graphics.drawscope.DrawScope, float, androidx.compose.ui.graphics.BlendModeColorFilter):void");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Params: \tname: ");
        sb.append(this.name);
        sb.append("\n\tviewportWidth: ");
        ParcelableSnapshotMutableState parcelableSnapshotMutableState = this.viewportSize$delegate;
        sb.append(Float.intBitsToFloat((int) (((Size) parcelableSnapshotMutableState.getValue()).packedValue >> 32)));
        sb.append("\n\tviewportHeight: ");
        sb.append(Float.intBitsToFloat((int) (((Size) parcelableSnapshotMutableState.getValue()).packedValue & 4294967295L)));
        sb.append("\n");
        return sb.toString();
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public final void draw(DrawScope drawScope) {
        draw(drawScope, 1.0f, null);
    }
}
