package org.wikipedia.readinglist;

import android.content.DialogInterface;
import androidx.appcompat.app.AppCompatActivity;
import java.util.List;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.talk.TalkTopicsViewModel$subscribeTopic$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingListBehaviorsUtil$$ExternalSyntheticLambda3 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AppCompatActivity f$0;
    public final /* synthetic */ ReadingListPage f$1;
    public final /* synthetic */ ReadingListBehaviorsUtil.Callback f$2;

    public /* synthetic */ ReadingListBehaviorsUtil$$ExternalSyntheticLambda3(AppCompatActivity appCompatActivity, ReadingListPage readingListPage, ReadingListBehaviorsUtil.Callback callback, int i) {
        this.$r8$classId = i;
        this.f$0 = appCompatActivity;
        this.f$1 = readingListPage;
        this.f$2 = callback;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.$r8$classId;
        ReadingListBehaviorsUtil.Callback callback = this.f$2;
        switch (i2) {
            case 0:
                List list = ReadingListBehaviorsUtil.allReadingLists;
                AwaitKt.launch$default(AwaitKt.MainScope(), ReadingListBehaviorsUtil.exceptionHandler, null, new TalkTopicsViewModel$subscribeTopic$1(this.f$1, true, this.f$0, null, 7), 2);
                callback.onCompleted();
                break;
            default:
                List list2 = ReadingListBehaviorsUtil.allReadingLists;
                ReadingListBehaviorsUtil.toggleOffline(this.f$0, this.f$1, callback);
                break;
        }
    }
}
