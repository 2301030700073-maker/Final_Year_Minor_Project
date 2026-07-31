package org.wikipedia.feed.personalization.db.dao;

import androidx.sqlite.SQLiteConnection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.wikipedia.feed.personalization.db.entity.InterestArticle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class InterestArticleDao_Impl$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ InterestArticleDao_Impl f$0;
    public final /* synthetic */ InterestArticle f$1;

    public /* synthetic */ InterestArticleDao_Impl$$ExternalSyntheticLambda1(InterestArticleDao_Impl interestArticleDao_Impl, InterestArticle interestArticle, int i) {
        this.$r8$classId = i;
        this.f$0 = interestArticleDao_Impl;
        this.f$1 = interestArticle;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        InterestArticle interestArticle = this.f$1;
        InterestArticleDao_Impl interestArticleDao_Impl = this.f$0;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                interestArticleDao_Impl.__insertAdapterOfInterestArticle.insert(sQLiteConnection, interestArticle);
                break;
            default:
                sQLiteConnection.getClass();
                interestArticleDao_Impl.__deleteAdapterOfInterestArticle.handle(sQLiteConnection, interestArticle);
                break;
        }
        return unit;
    }
}
