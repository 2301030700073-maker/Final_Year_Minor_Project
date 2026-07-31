package org.wikipedia.page.customize;

import androidx.lifecycle.ViewModel;
import androidx.room.Room;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.json.JsonImpl;
import org.wikipedia.R;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.page.action.PageActionItem;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CustomizeToolbarViewModel extends ViewModel {
    public ArrayList toolbarOrder = new ArrayList();
    public ArrayList menuOrder = new ArrayList();
    public final ArrayList fullList = new ArrayList();

    public CustomizeToolbarViewModel() {
        Prefs prefs = Prefs.INSTANCE;
        setupDefaultOrder(Prefs.getCustomizeToolbarMenuOrder().isEmpty() && Prefs.getCustomizeToolbarOrder().isEmpty());
        preProcessList();
    }

    public static List addItemsOrEmptyPlaceholder(ArrayList arrayList, boolean z) {
        if (arrayList.isEmpty()) {
            return Room.listOf(emptyPlaceholderPair(z));
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            int intValue = ((Number) it.next()).intValue();
            PageActionItem.Companion.getClass();
            arrayList2.add(new Pair(2, PageActionItem.Companion.find(intValue)));
        }
        return arrayList2;
    }

    public static Pair emptyPlaceholderPair(boolean z) {
        return new Pair(4, Boolean.valueOf(z));
    }

    public static Pair headerPair(boolean z) {
        return new Pair(1, Integer.valueOf(z ? R.string.customize_toolbar_category_toolbar : R.string.customize_toolbar_category_menu));
    }

    public final void preProcessList() {
        ArrayList arrayList = this.fullList;
        arrayList.clear();
        arrayList.add(new Pair(0, ""));
        arrayList.add(headerPair(true));
        arrayList.addAll(addItemsOrEmptyPlaceholder(this.toolbarOrder, true));
        arrayList.add(headerPair(false));
        arrayList.addAll(addItemsOrEmptyPlaceholder(this.menuOrder, false));
        arrayList.add(new Pair(3, ""));
    }

    public final ArrayList saveChanges() {
        String str;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = this.fullList;
        Iterator it = arrayList4.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((Number) ((Pair) next).first).intValue() != 4) {
                arrayList3.add(next);
            }
        }
        Iterator it2 = arrayList3.iterator();
        boolean z = true;
        while (it2.hasNext()) {
            Pair pair = (Pair) it2.next();
            if (Intrinsics.areEqual(pair, headerPair(false))) {
                z = false;
            }
            if (((Number) pair.first).intValue() == 2) {
                Object obj = pair.second;
                if (z) {
                    obj.getClass();
                    arrayList.add(Integer.valueOf(((PageActionItem) obj).getId()));
                } else {
                    obj.getClass();
                    arrayList2.add(Integer.valueOf(((PageActionItem) obj).getId()));
                }
            }
        }
        ArrayList arrayList5 = new ArrayList();
        while (arrayList.size() > 5) {
            Collections.swap(arrayList4, arrayList.size(), arrayList.size() + 1);
            arrayList5.add(Integer.valueOf(arrayList.size()));
            arrayList2.add(0, arrayList.remove(arrayList.size() - 1));
        }
        this.toolbarOrder = arrayList;
        this.menuOrder = arrayList2;
        Prefs prefs = Prefs.INSTANCE;
        String str2 = null;
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            str = jsonImpl.encodeToString(new HashSetSerializer(IntSerializer.INSTANCE, 1), arrayList);
        } catch (Exception e) {
            L.w(e);
            str = null;
        }
        PrefsIoUtil.setString(R.string.preference_key_customize_toolbar_order, str);
        Prefs prefs2 = Prefs.INSTANCE;
        ArrayList arrayList6 = this.menuOrder;
        arrayList6.getClass();
        try {
            JsonImpl jsonImpl2 = JsonUtil.json;
            jsonImpl2.getClass();
            str2 = jsonImpl2.encodeToString(new HashSetSerializer(IntSerializer.INSTANCE, 1), arrayList6);
        } catch (Exception e2) {
            L.w(e2);
        }
        PrefsIoUtil.setString(R.string.preference_key_customize_toolbar_menu_order, str2);
        return arrayList5;
    }

    public final void setupDefaultOrder(boolean z) {
        if (z) {
            Prefs prefs = Prefs.INSTANCE;
            PrefsIoUtil.remove(R.string.preference_key_customize_toolbar_order);
            PrefsIoUtil.remove(R.string.preference_key_customize_toolbar_menu_order);
        }
        Prefs prefs2 = Prefs.INSTANCE;
        this.toolbarOrder = CollectionsKt.toMutableList((Collection) Prefs.getCustomizeToolbarOrder());
        this.menuOrder = new ArrayList(Prefs.getCustomizeToolbarMenuOrder());
    }
}
