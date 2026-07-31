package org.wikipedia.talk.template;

import android.content.Intent;
import android.os.Parcelable;
import androidx.compose.ui.unit.DpKt;
import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.text.UStringsKt;
import org.wikipedia.activity.SingleFragmentActivity;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/talk/template/TalkTemplatesActivity;", "Lorg/wikipedia/activity/SingleFragmentActivity;", "Lorg/wikipedia/talk/template/TalkTemplatesFragment;", "<init>", "()V", "Companion", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TalkTemplatesActivity extends SingleFragmentActivity {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final Fragment createFragment() {
        Intent intent = getIntent();
        intent.getClass();
        PageTitle pageTitle = (PageTitle) ((Parcelable) DpKt.getParcelableExtra(intent, "title", PageTitle.class));
        boolean booleanExtra = getIntent().getBooleanExtra("templateManagement", false);
        long longExtra = getIntent().getLongExtra("fromRevisionId", -1L);
        long longExtra2 = getIntent().getLongExtra("toRevisionId", -1L);
        TalkTemplatesFragment talkTemplatesFragment = new TalkTemplatesFragment();
        talkTemplatesFragment.setArguments(UStringsKt.bundleOf(new Pair("title", pageTitle), new Pair("templateManagement", Boolean.valueOf(booleanExtra)), new Pair("fromRevisionId", Long.valueOf(longExtra)), new Pair("toRevisionId", Long.valueOf(longExtra2))));
        return talkTemplatesFragment;
    }
}
