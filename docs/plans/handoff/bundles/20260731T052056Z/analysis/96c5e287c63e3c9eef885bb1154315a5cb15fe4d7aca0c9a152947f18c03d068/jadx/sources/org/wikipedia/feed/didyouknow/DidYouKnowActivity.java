package org.wikipedia.feed.didyouknow;

import android.content.Intent;
import android.icu.text.ListFormatter;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.unit.DpKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import okhttp3.Request;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DidYouKnowActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Request.Builder pageOverflowMenuViewModel$delegate;

    public DidYouKnowActivity() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.pageOverflowMenuViewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(PageOverflowMenuViewModel.class), new Function0(this) { // from class: org.wikipedia.feed.didyouknow.DidYouKnowActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ DidYouKnowActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                DidYouKnowActivity didYouKnowActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return didYouKnowActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return didYouKnowActivity.getViewModelStore();
                    default:
                        return didYouKnowActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.feed.didyouknow.DidYouKnowActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ DidYouKnowActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                DidYouKnowActivity didYouKnowActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return didYouKnowActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return didYouKnowActivity.getViewModelStore();
                    default:
                        return didYouKnowActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.feed.didyouknow.DidYouKnowActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ DidYouKnowActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                DidYouKnowActivity didYouKnowActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return didYouKnowActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return didYouKnowActivity.getViewModelStore();
                    default:
                        return didYouKnowActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
    }

    public static final void onCreate$lambda$0$0$3$0$4$0(DidYouKnowActivity didYouKnowActivity, HistoryEntry historyEntry, List list, ReadingListPage readingListPage) {
        list.getClass();
        readingListPage.getClass();
        if (didYouKnowActivity.isDestroyed()) {
            return;
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ReadingList) it.next()).getTitle());
        }
        String string = didYouKnowActivity.getString(R.string.reading_list_item_deleted_from_list, historyEntry.getTitle().getDisplayText(), Build.VERSION.SDK_INT >= 26 ? ListFormatter.getInstance().format(arrayList) : CollectionsKt.joinToString$default(arrayList, ", ", null, null, null, 62));
        string.getClass();
        ShareUtil.showMessage(didYouKnowActivity, string, 0);
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        intent.getClass();
        Parcelable parcelable = (Parcelable) DpKt.getParcelableExtra(intent, "wikiSite", WikiSite.class);
        parcelable.getClass();
        ArrayList<String> stringArrayListExtra = getIntent().getStringArrayListExtra("did_you_know_items");
        stringArrayListExtra.getClass();
        ComponentActivityKt.setContent$default(this, new ComposableLambdaImpl(new DidYouKnowActivity$$ExternalSyntheticLambda0((WikiSite) parcelable, stringArrayListExtra, this, 0), true, -563223974));
    }
}
