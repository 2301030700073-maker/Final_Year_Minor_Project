package org.wikipedia.util;

import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.EnterTransitionImpl;
import androidx.compose.animation.ExitTransitionImpl;
import androidx.compose.ui.Modifier;
import androidx.paging.CombinedLoadStates;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import kotlin.Unit;
import kotlin.collections.ReversedListReadOnly;
import kotlin.jvm.functions.Function1;
import kotlin.text.MatcherMatchResult;
import org.wikipedia.yearinreview.YearInReviewActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class StringUtil$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ StringUtil$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                MatcherMatchResult matcherMatchResult = (MatcherMatchResult) obj;
                matcherMatchResult.getClass();
                String str = (String) ((ReversedListReadOnly) matcherMatchResult.getGroupValues()).get(1);
                CharSequence charSequence = (CharSequence) ((ReversedListReadOnly) matcherMatchResult.getGroupValues()).get(2);
                if (charSequence.length() == 0) {
                    charSequence = str;
                }
                return Modifier.CC.m("<a href=\"", str, "\">", (String) charSequence, "</a>");
            case 1:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                SQLiteStatement prepare = sQLiteConnection.prepare("SELECT `order` FROM TalkTemplate WHERE `order` ORDER BY `order` DESC LIMIT 1");
                try {
                    Integer num = null;
                    if (prepare.step() && !prepare.isNull(0)) {
                        num = Integer.valueOf((int) prepare.getLong(0));
                    }
                    return num;
                } finally {
                    prepare.close();
                }
            case 2:
                return ((CombinedLoadStates) obj).refresh;
            case 3:
                int i = YearInReviewActivity.$r8$clinit;
                ((AnimatedContentTransitionScopeImpl) obj).getClass();
                return EnterTransitionImpl.None;
            case 4:
                int i2 = YearInReviewActivity.$r8$clinit;
                ((AnimatedContentTransitionScopeImpl) obj).getClass();
                return ExitTransitionImpl.None;
            case 5:
                int i3 = YearInReviewActivity.$r8$clinit;
                ((AnimatedContentTransitionScopeImpl) obj).getClass();
                return EnterTransitionImpl.None;
            case 6:
                int i4 = YearInReviewActivity.$r8$clinit;
                ((AnimatedContentTransitionScopeImpl) obj).getClass();
                return ExitTransitionImpl.None;
            default:
                ((String) obj).getClass();
                return Unit.INSTANCE;
        }
    }
}
