package org.wikipedia.readinglist;

import java.util.List;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.database.ReadingList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingListsFragment$$ExternalSyntheticLambda11 implements ReadingListBehaviorsUtil.Callback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ReadingListsFragment f$0;
    public final /* synthetic */ ReadingList f$1;

    public /* synthetic */ ReadingListsFragment$$ExternalSyntheticLambda11(ReadingListsFragment readingListsFragment, ReadingList readingList, int i) {
        this.$r8$classId = i;
        this.f$0 = readingListsFragment;
        this.f$1 = readingList;
    }

    @Override // org.wikipedia.readinglist.ReadingListBehaviorsUtil.Callback
    public final void onCompleted() {
        int i = this.$r8$classId;
        ReadingList readingList = this.f$1;
        ReadingListsFragment readingListsFragment = this.f$0;
        switch (i) {
            case 0:
                List list = ReadingListBehaviorsUtil.allReadingLists;
                ReadingListBehaviorsUtil.showDeleteListUndoSnackbar(readingListsFragment.requireActivity(), readingList, new ReadingListsFragment$$ExternalSyntheticLambda1(readingListsFragment, 4));
                readingListsFragment.updateLists();
                break;
            default:
                List list2 = ReadingListBehaviorsUtil.allReadingLists;
                ReadingListBehaviorsUtil.showDeleteListUndoSnackbar(readingListsFragment.requireActivity(), readingList, new ReadingListsFragment$$ExternalSyntheticLambda1(readingListsFragment, 10));
                readingListsFragment.updateLists();
                break;
        }
    }
}
