package org.wikipedia.feed.onthisday;

import android.content.Intent;
import android.os.Parcelable;
import androidx.compose.ui.unit.DpKt;
import androidx.fragment.app.Fragment;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.text.UStringsKt;
import org.wikipedia.Constants;
import org.wikipedia.activity.SingleFragmentActivity;
import org.wikipedia.dataclient.WikiSite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/feed/onthisday/OnThisDayActivity;", "Lorg/wikipedia/activity/SingleFragmentActivity;", "Lorg/wikipedia/feed/onthisday/OnThisDayFragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OnThisDayActivity extends SingleFragmentActivity {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final Fragment createFragment() {
        int intExtra = getIntent().getIntExtra("age", 0);
        Intent intent = getIntent();
        intent.getClass();
        Parcelable parcelable = (Parcelable) DpKt.getParcelableExtra(intent, "wikiSite", WikiSite.class);
        parcelable.getClass();
        int intExtra2 = getIntent().getIntExtra("year", -1);
        Serializable serializableExtra = getIntent().getSerializableExtra("invokeSource");
        serializableExtra.getClass();
        OnThisDayFragment onThisDayFragment = new OnThisDayFragment();
        onThisDayFragment.setArguments(UStringsKt.bundleOf(new Pair("age", Integer.valueOf(intExtra)), new Pair("wikiSite", (WikiSite) parcelable), new Pair("year", Integer.valueOf(intExtra2)), new Pair("invokeSource", (Constants.InvokeSource) serializableExtra)));
        return onThisDayFragment;
    }
}
