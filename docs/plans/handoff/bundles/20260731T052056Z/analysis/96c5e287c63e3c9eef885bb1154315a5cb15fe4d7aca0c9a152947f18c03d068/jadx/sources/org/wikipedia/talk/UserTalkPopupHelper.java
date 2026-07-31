package org.wikipedia.talk;

import android.content.Context;
import android.content.Intent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.fragment.app.FragmentManagerImpl;
import com.skydoves.balloon.Balloon$$ExternalSyntheticLambda7;
import kotlin.Pair;
import kotlin.text.UStringsKt;
import okhttp3.Headers;
import okio.Okio__OkioKt;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.dataclient.discussiontools.ThreadItem;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.linkpreview.LinkPreviewDialog;
import org.wikipedia.talk.db.TalkTemplate;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UserTalkPopupHelper {
    public static final UserTalkPopupHelper INSTANCE$1 = new UserTalkPopupHelper();
    public static final UserTalkPopupHelper INSTANCE = new UserTalkPopupHelper();

    public static Intent newIntent$default(Context context, PageTitle pageTitle, String str, ThreadItem threadItem, Constants.InvokeSource invokeSource, CharSequence charSequence, CharSequence charSequence2, TalkTemplate talkTemplate, long j, long j2, boolean z, boolean z2, int i) {
        TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
        CharSequence charSequence3 = (i & 32) != 0 ? null : charSequence;
        CharSequence charSequence4 = (i & 64) != 0 ? null : charSequence2;
        boolean z3 = (i & 128) == 0;
        TalkTemplate talkTemplate2 = (i & 256) == 0 ? talkTemplate : null;
        long j3 = (i & 512) != 0 ? -1L : j;
        long j4 = (i & 1024) == 0 ? j2 : -1L;
        boolean z4 = (i & 2048) != 0 ? false : z;
        boolean z5 = (i & 4096) == 0 ? z2 : false;
        pageTitle.getClass();
        invokeSource.getClass();
        Intent putExtra = new Intent(context, (Class<?>) TalkReplyActivity.class).putExtra("title", pageTitle).putExtra("parentSubject", str).putExtra("topic", threadItem).putExtra("subject", charSequence3).putExtra("body", charSequence4).putExtra("fromDiff", z3).putExtra("selectedTemplate", talkTemplate2).putExtra("templateManagement", z4).putExtra("exampleTemplate", z5).putExtra("fromRevisionId", j4).putExtra("toRevisionId", j3).putExtra("invokeSource", invokeSource);
        putExtra.getClass();
        return putExtra;
    }

    public static void show$default(UserTalkPopupHelper userTalkPopupHelper, AppCompatActivity appCompatActivity, PageTitle pageTitle, boolean z, int i, int i2, Constants.InvokeSource invokeSource, int i3, boolean z2, Long l, Integer num, int i4) {
        boolean z3 = false;
        int i5 = 1;
        boolean z4 = (i4 & 128) != 0;
        boolean z5 = (i4 & 256) != 0 ? false : z2;
        Long l2 = (i4 & 512) != 0 ? null : l;
        Integer num2 = (i4 & 1024) != 0 ? null : num;
        invokeSource.getClass();
        if (pageTitle.namespace() == Namespace.USER_TALK || pageTitle.namespace() == Namespace.TALK) {
            int i6 = TalkTopicsActivity.$r8$clinit;
            appCompatActivity.startActivity(Headers.Companion.newIntent(appCompatActivity, pageTitle, invokeSource));
            return;
        }
        if (pageTitle.namespace() != Namespace.USER) {
            FragmentManagerImpl supportFragmentManager = appCompatActivity.getSupportFragmentManager();
            HistoryEntry historyEntry = new HistoryEntry(i3, pageTitle);
            LinkPreviewDialog linkPreviewDialog = new LinkPreviewDialog();
            linkPreviewDialog.setArguments(UStringsKt.bundleOf(new Pair("entry", historyEntry), new Pair("location", null), new Pair("lastKnownLocation", null)));
            Okio__OkioKt.show(supportFragmentManager, linkPreviewDialog);
            return;
        }
        View decorView = appCompatActivity.getWindow().getDecorView();
        decorView.getClass();
        View view = new View(appCompatActivity);
        view.setX(i - decorView.getLeft());
        view.setY(i2 - decorView.getTop());
        ((ViewGroup) decorView).addView(view);
        MenuBuilder menuBuilder = new MenuBuilder(appCompatActivity);
        appCompatActivity.getMenuInflater().inflate(R.menu.menu_user_talk_popup, menuBuilder);
        menuBuilder.mCallback = new RulerTrackingMap(appCompatActivity, pageTitle, i3, invokeSource, num2, l2);
        menuBuilder.findItem(R.id.menu_user_profile_page).setVisible(!z);
        menuBuilder.findItem(R.id.menu_user_contributions_page).setVisible(z4);
        menuBuilder.findItem(R.id.menu_user_information).setVisible(z5 && !z);
        MenuItem findItem = menuBuilder.findItem(R.id.menu_user_thank);
        if (l2 != null && !z && Headers.Companion.isLoggedIn()) {
            z3 = true;
        }
        findItem.setVisible(z3);
        MenuPopupHelper menuPopupHelper = new MenuPopupHelper(appCompatActivity, menuBuilder, view);
        menuPopupHelper.setForceShowIcon(true);
        menuPopupHelper.mOnDismissListener = new Balloon$$ExternalSyntheticLambda7(i5, decorView, view);
        menuPopupHelper.show();
    }

    public void show(AppCompatActivity appCompatActivity, PageTitle pageTitle, boolean z, View view, Constants.InvokeSource invokeSource, int i, Long l, Integer num, boolean z2) {
        invokeSource.getClass();
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        show$default(this, appCompatActivity, pageTitle, z, iArr[0], iArr[1], invokeSource, i, z2, l, num, 128);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0109 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00ba -> B:11:0x00c5). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object waitForUpdatedRevision(android.content.Context r19, org.wikipedia.dataclient.WikiSite r20, org.wikipedia.page.PageTitle r21, long r22, int r24, kotlin.coroutines.jvm.internal.ContinuationImpl r25) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.talk.UserTalkPopupHelper.waitForUpdatedRevision(android.content.Context, org.wikipedia.dataclient.WikiSite, org.wikipedia.page.PageTitle, long, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
