package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.layout.Arrangement$Horizontal;
import androidx.compose.foundation.layout.Arrangement$Vertical;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.grid.GridSlotCache;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.layout.LazyLayoutNearestRangeState;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.graphics.GraphicsContext;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KProperty0;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LazyListKt$rememberLazyListMeasurePolicy$1$1 {
    public final /* synthetic */ PaddingValues $contentPadding;
    public final /* synthetic */ CoroutineScope $coroutineScope;
    public final /* synthetic */ GraphicsContext $graphicsContext;
    public final /* synthetic */ Object $horizontalAlignment;
    public final /* synthetic */ Function0 $itemProviderLambda;
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ ScrollableState $state;
    public final /* synthetic */ LazyLayoutNearestRangeState.Companion $stickyItemsPlacement;
    public final /* synthetic */ Arrangement$Vertical $verticalArrangement;

    public LazyListKt$rememberLazyListMeasurePolicy$1$1(LazyListState lazyListState, PaddingValues paddingValues, KProperty0 kProperty0, Arrangement$Vertical arrangement$Vertical, CoroutineScope coroutineScope, GraphicsContext graphicsContext, LazyLayoutNearestRangeState.Companion companion, Alignment.Horizontal horizontal) {
        this.$state = lazyListState;
        this.$contentPadding = paddingValues;
        this.$itemProviderLambda = kProperty0;
        this.$verticalArrangement = arrangement$Vertical;
        this.$coroutineScope = coroutineScope;
        this.$graphicsContext = graphicsContext;
        this.$stickyItemsPlacement = companion;
        this.$horizontalAlignment = horizontal;
    }

    /* JADX WARN: Removed duplicated region for block: B:212:0x064d  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x065c  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0683  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x06a5  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x06c9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x06f5  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x06fd  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0702  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x06fa  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x06b8  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0695  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0661  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0652  */
    /* renamed from: measure-0kLqBqw$androidx$compose$foundation$lazy$LazyListKt$rememberLazyListMeasurePolicy$1$1, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final androidx.compose.ui.layout.MeasureResult m242xde768a03(androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl r59, long r60) {
        /*
            Method dump skipped, instructions count: 1852
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1.m242xde768a03(androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl, long):androidx.compose.ui.layout.MeasureResult");
    }

    /* JADX WARN: Code restructure failed: missing block: B:159:0x04b7, code lost:
    
        r0 = (androidx.compose.foundation.lazy.grid.LazyGridMeasuredItem) r10.get(r15);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:115:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x040e  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0485  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x048c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0496  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0539 A[LOOP:6: B:167:0x04e7->B:178:0x0539, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x054b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x054d  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0557  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x05d1  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x05d5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0619  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0623  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0629 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x063f A[LOOP:12: B:226:0x063d->B:227:0x063f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0659  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x076c  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x07e9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:273:0x07b3  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x06d1  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0626  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x05e6  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0855  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x037d  */
    /* JADX WARN: Type inference failed for: r10v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v24, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r17v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r19v25, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r22v19 */
    /* JADX WARN: Type inference failed for: r22v20 */
    /* JADX WARN: Type inference failed for: r22v8 */
    /* JADX WARN: Type inference failed for: r22v9 */
    /* JADX WARN: Type inference failed for: r3v24, types: [boolean] */
    /* renamed from: measure-0kLqBqw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.ui.layout.MeasureResult m243measure0kLqBqw(androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl r66, long r67) {
        /*
            Method dump skipped, instructions count: 2158
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1.m243measure0kLqBqw(androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl, long):androidx.compose.ui.layout.MeasureResult");
    }

    public LazyListKt$rememberLazyListMeasurePolicy$1$1(LazyGridState lazyGridState, PaddingValues paddingValues, KProperty0 kProperty0, GridSlotCache gridSlotCache, Arrangement$Vertical arrangement$Vertical, Arrangement$Horizontal arrangement$Horizontal, CoroutineScope coroutineScope, GraphicsContext graphicsContext, LazyLayoutNearestRangeState.Companion companion) {
        this.$state = lazyGridState;
        this.$contentPadding = paddingValues;
        this.$itemProviderLambda = kProperty0;
        this.$horizontalAlignment = gridSlotCache;
        this.$verticalArrangement = arrangement$Vertical;
        this.$coroutineScope = coroutineScope;
        this.$graphicsContext = graphicsContext;
        this.$stickyItemsPlacement = companion;
    }
}
