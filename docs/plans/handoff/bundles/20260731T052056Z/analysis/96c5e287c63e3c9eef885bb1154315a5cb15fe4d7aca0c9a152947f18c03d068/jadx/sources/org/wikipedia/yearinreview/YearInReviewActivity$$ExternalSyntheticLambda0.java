package org.wikipedia.yearinreview;

import android.graphics.Bitmap;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.work.Operation$State;
import coil3.util.ContextsKt;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Cache;
import org.wikipedia.util.SingleLiveData$$ExternalSyntheticLambda0;
import org.wikipedia.util.StringUtil$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class YearInReviewActivity$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ YearInReviewActivity f$0;

    public /* synthetic */ YearInReviewActivity$$ExternalSyntheticLambda0(YearInReviewActivity yearInReviewActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = yearInReviewActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object[] objArr = 0;
        int i2 = 1;
        YearInReviewActivity yearInReviewActivity = this.f$0;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                int i3 = YearInReviewActivity.$r8$clinit;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(-700916109, new YearInReviewActivity$$ExternalSyntheticLambda0(yearInReviewActivity, i2), gapComposer), gapComposer, 48, 1);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 1:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                int i4 = YearInReviewActivity.$r8$clinit;
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    if (rememberedValue == neverEqualPolicy) {
                        rememberedValue = Updater.createCompositionCoroutineScope(gapComposer2);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    CoroutineScope coroutineScope = (CoroutineScope) rememberedValue;
                    NavHostController rememberNavController = ExceptionsKt.rememberNavController(new Navigator[0], gapComposer2);
                    boolean changedInstance = gapComposer2.changedInstance(yearInReviewActivity);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new YearInReviewActivity$$ExternalSyntheticLambda2(yearInReviewActivity, objArr == true ? 1 : 0);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    Operation$State.BackHandler(false, (Function0) rememberedValue2, gapComposer2, 0);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new StringUtil$$ExternalSyntheticLambda0(3);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    Function1 function1 = (Function1) rememberedValue3;
                    Object rememberedValue4 = gapComposer2.rememberedValue();
                    if (rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new StringUtil$$ExternalSyntheticLambda0(4);
                        gapComposer2.updateRememberedValue(rememberedValue4);
                    }
                    Function1 function12 = (Function1) rememberedValue4;
                    Object rememberedValue5 = gapComposer2.rememberedValue();
                    if (rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = new StringUtil$$ExternalSyntheticLambda0(5);
                        gapComposer2.updateRememberedValue(rememberedValue5);
                    }
                    Function1 function13 = (Function1) rememberedValue5;
                    Object rememberedValue6 = gapComposer2.rememberedValue();
                    if (rememberedValue6 == neverEqualPolicy) {
                        rememberedValue6 = new StringUtil$$ExternalSyntheticLambda0(6);
                        gapComposer2.updateRememberedValue(rememberedValue6);
                    }
                    Function1 function14 = (Function1) rememberedValue6;
                    boolean changedInstance2 = gapComposer2.changedInstance(yearInReviewActivity) | gapComposer2.changedInstance(coroutineScope);
                    Object rememberedValue7 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue7 == neverEqualPolicy) {
                        rememberedValue7 = new SingleLiveData$$ExternalSyntheticLambda0(12, yearInReviewActivity, coroutineScope);
                        gapComposer2.updateRememberedValue(rememberedValue7);
                    }
                    ContextsKt.NavHost(rememberNavController, (Modifier) null, (Alignment) null, function1, function12, function13, function14, (Function1) rememberedValue7, gapComposer2, 115015728);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            default:
                int intValue3 = ((Integer) obj).intValue();
                int intValue4 = ((Integer) obj2).intValue();
                int i5 = YearInReviewActivity.$r8$clinit;
                YearInReviewViewModel yearInReviewViewModel = (YearInReviewViewModel) yearInReviewActivity.viewModel$delegate.getValue();
                if ((yearInReviewViewModel.screenshotHeaderBitmap.getWidth() != intValue3 || yearInReviewViewModel.screenshotHeaderBitmap.getHeight() != intValue4) && intValue3 > 0 && intValue4 > 0) {
                    Bitmap createBitmap = Bitmap.createBitmap(intValue3, intValue4, Bitmap.Config.ARGB_8888);
                    createBitmap.getClass();
                    yearInReviewViewModel.screenshotHeaderBitmap = createBitmap;
                }
                return yearInReviewViewModel.screenshotHeaderBitmap;
        }
    }
}
