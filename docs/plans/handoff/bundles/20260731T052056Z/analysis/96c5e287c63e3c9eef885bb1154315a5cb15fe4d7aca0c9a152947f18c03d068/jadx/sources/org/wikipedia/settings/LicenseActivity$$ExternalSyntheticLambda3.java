package org.wikipedia.settings;

import androidx.compose.runtime.GapComposer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.wikipedia.compose.components.TabsBoxKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class LicenseActivity$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ Function0 f$1;

    public /* synthetic */ LicenseActivity$$ExternalSyntheticLambda3(int i, String str, Function0 function0) {
        this.$r8$classId = i;
        this.f$0 = str;
        this.f$1 = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                int i2 = LicenseActivity.$r8$clinit;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    TabsBoxKt.m904WikiTopAppBarWHejsw(null, this.f$0, this.f$1, null, null, gapComposer, 0, 57);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    TabsBoxKt.m904WikiTopAppBarWHejsw(null, this.f$0, this.f$1, null, null, gapComposer2, 0, 57);
                    break;
                }
        }
        return unit;
    }
}
