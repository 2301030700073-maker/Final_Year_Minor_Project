package org.wikipedia.compose.components.menu;

import android.content.Context;
import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import java.util.List;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.history.HistoryEntry;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageOverflowMenuViewModel extends ViewModel {
    public final ParcelableSnapshotMutableState pageOverflowMenuState$delegate = Updater.mutableStateOf$default(null);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PageOverflowMenuState {
        public final HistoryEntry entry;
        public final List items;
        public final String menuKey;

        public PageOverflowMenuState(HistoryEntry historyEntry, ListBuilder listBuilder, String str) {
            historyEntry.getClass();
            listBuilder.getClass();
            this.entry = historyEntry;
            this.items = listBuilder;
            this.menuKey = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PageOverflowMenuState)) {
                return false;
            }
            PageOverflowMenuState pageOverflowMenuState = (PageOverflowMenuState) obj;
            return Intrinsics.areEqual(this.entry, pageOverflowMenuState.entry) && this.items.equals(pageOverflowMenuState.items) && this.menuKey.equals(pageOverflowMenuState.menuKey);
        }

        public final int hashCode() {
            return this.menuKey.hashCode() + Modifier.CC.m(this.entry.hashCode() * 31, 31, this.items);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("PageOverflowMenuState(entry=");
            sb.append(this.entry);
            sb.append(", items=");
            sb.append(this.items);
            sb.append(", menuKey=");
            return Animation.CC.m(sb, this.menuKey, ")");
        }
    }

    public final void onPageOverflowClick(Context context, WikiSite wikiSite, PageSummary pageSummary, int i, String str, Function1 function1, Function1 function12, Function2 function2, Function2 function22, Function2 function23, Function1 function13, Function1 function14) {
        wikiSite.getClass();
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new PageOverflowMenuViewModel$onPageOverflowClick$3(pageSummary, wikiSite, i, this, context, function1, function12, function2, function22, function23, function13, function14, str, null), 3);
    }
}
