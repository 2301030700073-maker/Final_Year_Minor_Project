package org.wikipedia.readinglist;

import android.content.Context;
import android.content.ContextWrapper;
import android.icu.text.ListFormatter;
import android.location.Location;
import android.os.Build;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.BitmapsKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LongPressMenu {
    public final View anchorView;
    public final Callback callback;
    public HistoryEntry entry;
    public final boolean existsInAnyList;
    public List listsContainingPage;
    public final Location location;
    public int menuRes;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onAddRequest(HistoryEntry historyEntry, boolean z);

        void onMoveRequest(ReadingListPage readingListPage, HistoryEntry historyEntry);

        void onOpenInNewTab(HistoryEntry historyEntry);

        void onOpenInPlaces(HistoryEntry historyEntry, Location location);

        void onOpenLink(HistoryEntry historyEntry);

        void onRemoveRequest();

        void onShareRequest();
    }

    public LongPressMenu(View view, int i, Location location, Callback callback, int i2) {
        boolean z = (i2 & 2) != 0;
        i = (i2 & 8) != 0 ? R.menu.menu_long_press : i;
        location = (i2 & 16) != 0 ? null : location;
        view.getClass();
        this.anchorView = view;
        this.existsInAnyList = z;
        this.menuRes = i;
        this.location = location;
        this.callback = callback;
    }

    public static final void deleteOrShowDialog$lambda$0$0(LongPressMenu longPressMenu, List list, ReadingListPage readingListPage) {
        list.getClass();
        readingListPage.getClass();
        HistoryEntry historyEntry = longPressMenu.entry;
        if (historyEntry == null || longPressMenu.getActivity().isDestroyed()) {
            return;
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ReadingList) it.next()).getTitle());
        }
        String format = Build.VERSION.SDK_INT >= 26 ? ListFormatter.getInstance().format(arrayList) : CollectionsKt.joinToString$default(arrayList, ", ", null, null, null, 62);
        AppCompatActivity activity = longPressMenu.getActivity();
        String string = longPressMenu.getActivity().getString(R.string.reading_list_item_deleted_from_list, historyEntry.getTitle().getDisplayText(), format);
        string.getClass();
        ShareUtil.showMessage(activity, string, 0);
    }

    public final AppCompatActivity getActivity() {
        Context context;
        View view = this.anchorView;
        if ((view.getContext() instanceof AppCompatActivity) || !(view.getContext() instanceof ContextWrapper)) {
            context = view.getContext();
        } else {
            Context context2 = view.getContext();
            context2.getClass();
            context = ((ContextWrapper) context2).getBaseContext();
        }
        context.getClass();
        return (AppCompatActivity) context;
    }

    public final void sendPlacesEvent(String str) {
        HistoryEntry historyEntry = this.entry;
        if (historyEntry == null || historyEntry.source != 9) {
            return;
        }
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String m = ViewSizeResolver$CC.m();
        Prefs prefs = Prefs.INSTANCE;
        EventPlatformClient.submit(new AppInteractionEvent(str, "list_view_menu", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
    }

    public final void show(HistoryEntry historyEntry) {
        if (historyEntry != null) {
            AwaitKt.launch$default(BitmapsKt.coroutineScope$default(this.anchorView), null, null, new LongPressMenu$show$1$1(this, historyEntry, (Continuation) null), 3);
        }
    }
}
