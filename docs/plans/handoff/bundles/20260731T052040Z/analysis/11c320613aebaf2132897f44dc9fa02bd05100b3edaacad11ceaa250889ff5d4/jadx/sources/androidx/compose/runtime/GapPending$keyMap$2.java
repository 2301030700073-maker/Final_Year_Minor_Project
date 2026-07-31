package androidx.compose.runtime;

import androidx.collection.MutableScatterMap;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.material3.SingleRowTopAppBarOverrideScope;
import androidx.compose.material3.TopAppBarColors;
import androidx.compose.runtime.collection.MultiValueMap;
import androidx.compose.runtime.composer.gapbuffer.KeyInfo;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Oklab;
import androidx.work.impl.constraints.ConstraintsState;
import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.flow.Flow;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class GapPending$keyMap$2 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ GapPending$keyMap$2(Object obj, int i) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                ArrayList arrayList = ((GapPending) obj).keyInfos;
                MutableScatterMap mutableScatterMap = new MutableScatterMap(arrayList.size());
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    KeyInfo keyInfo = (KeyInfo) arrayList.get(i2);
                    Object obj2 = keyInfo.objectKey;
                    int i3 = keyInfo.key;
                    MultiValueMap.m171addimpl(mutableScatterMap, obj2 != null ? new JoinedKey(Integer.valueOf(i3), keyInfo.objectKey) : Integer.valueOf(i3), keyInfo);
                }
                return new MultiValueMap(mutableScatterMap);
            case 1:
                TopAppBarColors topAppBarColors = ((SingleRowTopAppBarOverrideScope) obj).colors;
                long j = topAppBarColors.containerColor;
                long j2 = topAppBarColors.scrolledContainerColor;
                float transform = EasingKt.FastOutLinearInEasing.transform(0.0f);
                Oklab oklab = ColorSpaces.Oklab;
                long m242convertvNxB06k = Color.m242convertvNxB06k(j, oklab);
                long m242convertvNxB06k2 = Color.m242convertvNxB06k(j2, oklab);
                float m245getAlphaimpl = Color.m245getAlphaimpl(m242convertvNxB06k);
                float m249getRedimpl = Color.m249getRedimpl(m242convertvNxB06k);
                float m248getGreenimpl = Color.m248getGreenimpl(m242convertvNxB06k);
                float m246getBlueimpl = Color.m246getBlueimpl(m242convertvNxB06k);
                float m245getAlphaimpl2 = Color.m245getAlphaimpl(m242convertvNxB06k2);
                float m249getRedimpl2 = Color.m249getRedimpl(m242convertvNxB06k2);
                float m248getGreenimpl2 = Color.m248getGreenimpl(m242convertvNxB06k2);
                float m246getBlueimpl2 = Color.m246getBlueimpl(m242convertvNxB06k2);
                float f = transform >= 0.0f ? transform : 0.0f;
                if (f > 1.0f) {
                    f = 1.0f;
                }
                float f2 = 1.0f - f;
                return new Color(Color.m242convertvNxB06k(Brush.UncheckedColor((m249getRedimpl2 * f) + (m249getRedimpl * f2), (m248getGreenimpl2 * f) + (m248getGreenimpl * f2), (m246getBlueimpl2 * f) + (m246getBlueimpl * f2), (f * m245getAlphaimpl2) + (f2 * m245getAlphaimpl), oklab), Color.m247getColorSpaceimpl(j2)));
            default:
                return new ConstraintsState[((Flow[]) obj).length];
        }
    }
}
