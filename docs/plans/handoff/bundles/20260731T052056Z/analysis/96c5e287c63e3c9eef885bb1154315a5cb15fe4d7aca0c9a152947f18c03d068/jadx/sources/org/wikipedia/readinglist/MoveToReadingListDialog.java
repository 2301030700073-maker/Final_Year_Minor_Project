package org.wikipedia.readinglist;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.lifecycle.ViewModelKt;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.talk.UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/readinglist/MoveToReadingListDialog;", "Lorg/wikipedia/readinglist/AddToReadingListDialog;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MoveToReadingListDialog extends AddToReadingListDialog {
    public ReadingList sourceReadingList;

    @Override // org.wikipedia.readinglist.AddToReadingListDialog
    public final void commitChanges(ReadingList readingList, List list) {
        readingList.getClass();
        ReadingList readingList2 = this.sourceReadingList;
        if (readingList2 != null) {
            AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 29), null, new LongPressMenu$show$1$1(this, readingList, readingList2, list, null, 5), 2);
        }
    }

    @Override // org.wikipedia.readinglist.AddToReadingListDialog, androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        ((TextView) onCreateView.findViewById(R.id.dialog_title)).setText(R.string.reading_list_move_to);
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 1), null, new MoveToReadingListDialog$onCreateView$2(this, requireArguments().getLong("sourceReadingListId"), null), 2);
        return onCreateView;
    }
}
