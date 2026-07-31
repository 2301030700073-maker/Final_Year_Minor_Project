package org.wikipedia.settings;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutActivity$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AboutActivity f$0;

    public /* synthetic */ AboutActivity$$ExternalSyntheticLambda0(AboutActivity aboutActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = aboutActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        AboutActivity aboutActivity = this.f$0;
        int i2 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                int i3 = AboutActivity.$r8$clinit;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(1944387006, new AboutActivity$$ExternalSyntheticLambda0(aboutActivity, i2), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                int i4 = AboutActivity.$r8$clinit;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Modifier safeDrawingPadding = OffsetKt.safeDrawingPadding(SizeKt.FillWholeMaxSize);
                    List list = aboutActivity.credits;
                    boolean changedInstance = gapComposer2.changedInstance(aboutActivity);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new WikiGames$$ExternalSyntheticLambda0(24, aboutActivity);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    PrefsIoUtil.AboutWikipediaScreen(safeDrawingPadding, "r/50598-r-2026-07-13", list, (Function0) rememberedValue, gapComposer2, 48);
                    break;
                }
                break;
        }
        return unit;
    }
}
