package org.wikipedia.talk.db;

import androidx.sqlite.SQLiteConnection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkTemplateDao_Impl$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TalkTemplateDao_Impl f$0;
    public final /* synthetic */ TalkTemplate f$1;

    public /* synthetic */ TalkTemplateDao_Impl$$ExternalSyntheticLambda1(TalkTemplateDao_Impl talkTemplateDao_Impl, TalkTemplate talkTemplate, int i) {
        this.$r8$classId = i;
        this.f$0 = talkTemplateDao_Impl;
        this.f$1 = talkTemplate;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        TalkTemplate talkTemplate = this.f$1;
        TalkTemplateDao_Impl talkTemplateDao_Impl = this.f$0;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                talkTemplateDao_Impl.__insertAdapterOfTalkTemplate.insert(sQLiteConnection, talkTemplate);
                break;
            default:
                sQLiteConnection.getClass();
                talkTemplateDao_Impl.__updateAdapterOfTalkTemplate.handle(sQLiteConnection, talkTemplate);
                break;
        }
        return unit;
    }
}
