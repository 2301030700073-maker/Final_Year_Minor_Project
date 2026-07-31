package org.wikipedia.talk;

import androidx.recyclerview.widget.DiffUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.dataclient.discussiontools.ThreadItem;
import org.wikipedia.readinglist.ReadingListsFragment;
import org.wikipedia.readinglist.database.ReadingList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkTopicViewModel$getDiffResult$1 extends DiffUtil {
    public final /* synthetic */ List $newList;
    public final /* synthetic */ Object $prevList;
    public final /* synthetic */ int $r8$classId = 0;

    public TalkTopicViewModel$getDiffResult$1(ArrayList arrayList, List list) {
        this.$prevList = arrayList;
        this.$newList = list;
    }

    @Override // androidx.recyclerview.widget.DiffUtil
    public final boolean areContentsTheSame(int i, int i2) {
        int i3 = this.$r8$classId;
        Object obj = this.$prevList;
        List list = this.$newList;
        switch (i3) {
            case 0:
                return Intrinsics.areEqual(((ThreadItem) ((ArrayList) obj).get(i)).id, ((ThreadItem) list.get(i2)).id);
            default:
                ReadingListsFragment readingListsFragment = (ReadingListsFragment) obj;
                if (readingListsFragment.displayedLists.size() > i && list.size() > i2 && (readingListsFragment.displayedLists.get(i) instanceof ReadingList)) {
                    Object obj2 = readingListsFragment.displayedLists.get(i);
                    obj2.getClass();
                    ReadingList readingList = (ReadingList) obj2;
                    Object obj3 = list.get(i2);
                    obj3.getClass();
                    if (obj3 instanceof ReadingList) {
                        ReadingList readingList2 = (ReadingList) obj3;
                        if (readingList.id == readingList2.id && readingList.pages.size() == readingList2.pages.size() && readingList.getNumPagesOffline() == readingList2.getNumPagesOffline() && readingList.getTitle().equals(readingList2.getTitle()) && Intrinsics.areEqual(readingList.description, readingList2.description)) {
                            return true;
                        }
                    }
                }
                return false;
        }
    }

    @Override // androidx.recyclerview.widget.DiffUtil
    public final boolean areItemsTheSame(int i, int i2) {
        int i3 = this.$r8$classId;
        Object obj = this.$prevList;
        List list = this.$newList;
        switch (i3) {
            case 0:
                return Intrinsics.areEqual(((ArrayList) obj).get(i), list.get(i2));
            default:
                ReadingListsFragment readingListsFragment = (ReadingListsFragment) obj;
                if (readingListsFragment.displayedLists.size() > i && list.size() > i2 && (readingListsFragment.displayedLists.get(i) instanceof ReadingList) && (list.get(i2) instanceof ReadingList)) {
                    Object obj2 = readingListsFragment.displayedLists.get(i);
                    obj2.getClass();
                    long j = ((ReadingList) obj2).id;
                    Object obj3 = list.get(i2);
                    obj3.getClass();
                    if (j == ((ReadingList) obj3).id) {
                        return true;
                    }
                }
                return false;
        }
    }

    @Override // androidx.recyclerview.widget.DiffUtil
    public final int getNewListSize() {
        switch (this.$r8$classId) {
        }
        return this.$newList.size();
    }

    @Override // androidx.recyclerview.widget.DiffUtil
    public final int getOldListSize() {
        switch (this.$r8$classId) {
            case 0:
                return ((ArrayList) this.$prevList).size();
            default:
                return this.$newList.size();
        }
    }

    public TalkTopicViewModel$getDiffResult$1(List list, ReadingListsFragment readingListsFragment) {
        this.$newList = list;
        this.$prevList = readingListsFragment;
    }
}
