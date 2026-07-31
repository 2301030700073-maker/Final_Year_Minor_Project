package org.wikipedia.feed;

import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.text.style.TextAlign;
import androidx.recyclerview.widget.RecyclerView;
import coil3.compose.AsyncImageKt;
import coil3.compose.AsyncImagePainter;
import coil3.compose.RealSubcomposeAsyncImageScope;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function4;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.yearinreview.YearInReviewDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0 implements Function4 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                RealSubcomposeAsyncImageScope realSubcomposeAsyncImageScope = (RealSubcomposeAsyncImageScope) obj;
                GapComposer gapComposer = (GapComposer) obj3;
                int intValue = ((Integer) obj4).intValue();
                realSubcomposeAsyncImageScope.getClass();
                ((AsyncImagePainter.State.Success) obj2).getClass();
                if ((intValue & 6) == 0) {
                    intValue |= gapComposer.changed(realSubcomposeAsyncImageScope) ? 4 : 2;
                }
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 131) != 130)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    AsyncImageKt.SubcomposeAsyncImageContent(realSubcomposeAsyncImageScope, null, null, null, null, null, RecyclerView.DECELERATION_RATE, false, gapComposer, intValue & 14);
                    break;
                }
            case 1:
                break;
            case 2:
                String str = (String) obj2;
                GapComposer gapComposer2 = (GapComposer) obj3;
                int intValue2 = ((Integer) obj4).intValue();
                ((AnimatedContentScopeImpl) obj).getClass();
                str.getClass();
                TextKt.m308TextNvy7gAk(str, null, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer2, (intValue2 >> 3) & 14, 0, 130042);
                break;
            case 3:
                GapComposer gapComposer3 = (GapComposer) obj3;
                int intValue3 = ((Integer) obj4).intValue();
                ((RealSubcomposeAsyncImageScope) obj).getClass();
                ((AsyncImagePainter.State.Loading) obj2).getClass();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 129) != 128)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    YearInReviewDialog.LoadingIndicator(0, gapComposer3);
                    break;
                }
            case 4:
                RealSubcomposeAsyncImageScope realSubcomposeAsyncImageScope2 = (RealSubcomposeAsyncImageScope) obj;
                GapComposer gapComposer4 = (GapComposer) obj3;
                int intValue4 = ((Integer) obj4).intValue();
                realSubcomposeAsyncImageScope2.getClass();
                ((AsyncImagePainter.State.Success) obj2).getClass();
                if ((intValue4 & 6) == 0) {
                    intValue4 |= gapComposer4.changed(realSubcomposeAsyncImageScope2) ? 4 : 2;
                }
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 131) != 130)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    AsyncImageKt.SubcomposeAsyncImageContent(realSubcomposeAsyncImageScope2, null, null, null, null, null, RecyclerView.DECELERATION_RATE, false, gapComposer4, intValue4 & 14);
                    break;
                }
            case 5:
                boolean booleanValue = ((Boolean) obj2).booleanValue();
                GapComposer gapComposer5 = (GapComposer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(Modifier.Companion.$$INSTANCE, 16.0f);
                gapComposer5.startReplaceGroup(119112221);
                Painter painterResource = UnsignedKt.painterResource(booleanValue ? R.drawable.ic_check_black_24dp : R.drawable.ic_add_gray_white_24dp, 0, gapComposer5);
                gapComposer5.end(false);
                IconKt.m286Iconww6aTOc(painterResource, null, m145size3ABfNKs, 0L, gapComposer5, 440, 8);
                break;
            case 6:
                GapComposer gapComposer6 = (GapComposer) obj3;
                int intValue5 = ((Integer) obj4).intValue();
                ((RealSubcomposeAsyncImageScope) obj).getClass();
                ((AsyncImagePainter.State.Loading) obj2).getClass();
                if (!gapComposer6.shouldExecute(intValue5 & 1, (intValue5 & 129) != 128)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    YearInReviewDialog.LoadingIndicator(0, gapComposer6);
                    break;
                }
            case 7:
                RealSubcomposeAsyncImageScope realSubcomposeAsyncImageScope3 = (RealSubcomposeAsyncImageScope) obj;
                GapComposer gapComposer7 = (GapComposer) obj3;
                int intValue6 = ((Integer) obj4).intValue();
                realSubcomposeAsyncImageScope3.getClass();
                ((AsyncImagePainter.State.Success) obj2).getClass();
                if ((intValue6 & 6) == 0) {
                    intValue6 |= gapComposer7.changed(realSubcomposeAsyncImageScope3) ? 4 : 2;
                }
                if (!gapComposer7.shouldExecute(intValue6 & 1, (intValue6 & 131) != 130)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    AsyncImageKt.SubcomposeAsyncImageContent(realSubcomposeAsyncImageScope3, null, null, null, null, null, RecyclerView.DECELERATION_RATE, false, gapComposer7, intValue6 & 14);
                    break;
                }
            case 8:
                GapComposer gapComposer8 = (GapComposer) obj3;
                int intValue7 = ((Integer) obj4).intValue();
                ((RealSubcomposeAsyncImageScope) obj).getClass();
                ((AsyncImagePainter.State.Loading) obj2).getClass();
                if (!gapComposer8.shouldExecute(intValue7 & 1, (intValue7 & 129) != 128)) {
                    gapComposer8.skipToGroupEnd();
                    break;
                } else {
                    YearInReviewDialog.LoadingIndicator(0, gapComposer8);
                    break;
                }
            case 9:
                RealSubcomposeAsyncImageScope realSubcomposeAsyncImageScope4 = (RealSubcomposeAsyncImageScope) obj;
                GapComposer gapComposer9 = (GapComposer) obj3;
                int intValue8 = ((Integer) obj4).intValue();
                realSubcomposeAsyncImageScope4.getClass();
                ((AsyncImagePainter.State.Success) obj2).getClass();
                if ((intValue8 & 6) == 0) {
                    intValue8 |= gapComposer9.changed(realSubcomposeAsyncImageScope4) ? 4 : 2;
                }
                if (!gapComposer9.shouldExecute(intValue8 & 1, (intValue8 & 131) != 130)) {
                    gapComposer9.skipToGroupEnd();
                    break;
                } else {
                    AsyncImageKt.SubcomposeAsyncImageContent(realSubcomposeAsyncImageScope4, null, null, null, null, null, RecyclerView.DECELERATION_RATE, false, gapComposer9, intValue8 & 14);
                    break;
                }
            case 10:
                GapComposer gapComposer10 = (GapComposer) obj3;
                int intValue9 = ((Integer) obj4).intValue();
                ((RealSubcomposeAsyncImageScope) obj).getClass();
                ((AsyncImagePainter.State.Loading) obj2).getClass();
                if (!gapComposer10.shouldExecute(intValue9 & 1, (intValue9 & 129) != 128)) {
                    gapComposer10.skipToGroupEnd();
                    break;
                } else {
                    YearInReviewDialog.LoadingIndicator(0, gapComposer10);
                    break;
                }
            case 11:
                RealSubcomposeAsyncImageScope realSubcomposeAsyncImageScope5 = (RealSubcomposeAsyncImageScope) obj;
                GapComposer gapComposer11 = (GapComposer) obj3;
                int intValue10 = ((Integer) obj4).intValue();
                realSubcomposeAsyncImageScope5.getClass();
                ((AsyncImagePainter.State.Success) obj2).getClass();
                if ((intValue10 & 6) == 0) {
                    intValue10 |= gapComposer11.changed(realSubcomposeAsyncImageScope5) ? 4 : 2;
                }
                if (!gapComposer11.shouldExecute(intValue10 & 1, (intValue10 & 131) != 130)) {
                    gapComposer11.skipToGroupEnd();
                    break;
                } else {
                    AsyncImageKt.SubcomposeAsyncImageContent(realSubcomposeAsyncImageScope5, null, null, null, null, null, RecyclerView.DECELERATION_RATE, false, gapComposer11, intValue10 & 14);
                    break;
                }
            default:
                GapComposer gapComposer12 = (GapComposer) obj3;
                int intValue11 = ((Integer) obj4).intValue();
                ((RealSubcomposeAsyncImageScope) obj).getClass();
                ((AsyncImagePainter.State.Loading) obj2).getClass();
                if (!gapComposer12.shouldExecute(intValue11 & 1, (intValue11 & 129) != 128)) {
                    gapComposer12.skipToGroupEnd();
                    break;
                } else {
                    YearInReviewDialog.LoadingIndicator(0, gapComposer12);
                    break;
                }
        }
        return unit;
    }
}
