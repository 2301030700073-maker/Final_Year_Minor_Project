package org.wikipedia.readinglist;

import androidx.lifecycle.ViewModelKt;
import java.util.ArrayList;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.readinglist.ReadingListItemView;
import org.wikipedia.readinglist.database.ReadingList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AddToReadingListDialog$showCreateListDialog$2 implements ReadingListItemView.Callback, ReadingListTitleDialog$Callback {
    public final /* synthetic */ AddToReadingListDialog this$0;

    public /* synthetic */ AddToReadingListDialog$showCreateListDialog$2(AddToReadingListDialog addToReadingListDialog) {
        this.this$0 = addToReadingListDialog;
    }

    @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
    public void onChecked(ReadingList readingList) {
        readingList.getClass();
    }

    @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
    public void onClick(ReadingList readingList) {
        readingList.getClass();
        AddToReadingListDialog addToReadingListDialog = this.this$0;
        ArrayList arrayList = addToReadingListDialog.titles;
        if (arrayList != null) {
            addToReadingListDialog.addAndDismiss(readingList, arrayList);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("titles");
            throw null;
        }
    }

    @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
    public void onDelete(ReadingList readingList) {
        readingList.getClass();
    }

    @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
    public void onRemoveAllOffline(ReadingList readingList) {
        readingList.getClass();
    }

    @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
    public void onRename(ReadingList readingList) {
        readingList.getClass();
    }

    @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
    public void onSaveAllOffline(ReadingList readingList) {
        readingList.getClass();
    }

    @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
    public void onSaveToList(ReadingList readingList) {
        readingList.getClass();
    }

    @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
    public void onSelectList(ReadingList readingList) {
        readingList.getClass();
    }

    @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
    public void onShare(ReadingList readingList) {
        readingList.getClass();
    }

    @Override // org.wikipedia.readinglist.ReadingListTitleDialog$Callback
    public void onSuccess(String str, String str2) {
        str.getClass();
        str2.getClass();
        AddToReadingListDialog addToReadingListDialog = this.this$0;
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(addToReadingListDialog), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 27), null, new LongPressMenu$show$1$1(addToReadingListDialog, str, str2, (Continuation) null, 4), 2);
    }

    @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
    public void onAbout() {
    }

    @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
    public void onCustomize() {
    }

    @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
    public void onNotification() {
    }
}
