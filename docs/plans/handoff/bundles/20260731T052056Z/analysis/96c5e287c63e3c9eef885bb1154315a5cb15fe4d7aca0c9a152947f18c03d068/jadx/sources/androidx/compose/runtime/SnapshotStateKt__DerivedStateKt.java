package androidx.compose.runtime;

import androidx.compose.runtime.collection.MutableVector;
import com.caverock.androidsvg.SVG;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract /* synthetic */ class SnapshotStateKt__DerivedStateKt {
    public static final SVG calculationBlockNestedLevel = new SVG(7);
    public static final SVG derivedStateObservers = new SVG(7);

    public static final MutableVector derivedStateObservers() {
        SVG svg = derivedStateObservers;
        MutableVector mutableVector = (MutableVector) svg.get();
        if (mutableVector != null) {
            return mutableVector;
        }
        MutableVector mutableVector2 = new MutableVector(new GapComposer$derivedStateObserver$1[0]);
        svg.set(mutableVector2);
        return mutableVector2;
    }

    public static final DerivedSnapshotState derivedStateOf(Function0 function0) {
        return new DerivedSnapshotState(function0, null);
    }
}
