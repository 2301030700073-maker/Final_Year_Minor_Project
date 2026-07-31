package org.wikipedia.views;

import android.content.Context;
import android.util.TypedValue;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import coil3.size.ViewSizeResolver$CC;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.notifications.NotificationLinkHandler;
import org.wikipedia.notifications.NotificationListItemContainer;
import org.wikipedia.notifications.db.Notification;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationActionsOverflowView extends FrameLayout {
    public NotificationListItemContainer container;
    public NotificationLinkHandler linkHandler;
    public PopupWindow popupWindowHost;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003c, code lost:
    
        if (r0.equals("userSpeechBubble") == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0063, code lost:
    
        r5 = org.wikipedia.R.drawable.ic_notification_article_talk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0060, code lost:
    
        if (r0.equals("speechBubbles") == false) goto L29;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:31)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:60)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void setUpViewForLink(android.widget.TextView r3, org.wikipedia.notifications.db.Notification.Link r4, int r5, int r6, int r7) {
        /*
            org.wikipedia.util.StringUtil r0 = org.wikipedia.util.StringUtil.INSTANCE
            java.lang.String r0 = r4.tooltip
            int r1 = r0.length()
            if (r1 != 0) goto Lc
            java.lang.String r0 = r4.label
        Lc:
            android.text.Spanned r0 = org.wikipedia.util.StringUtil.fromHtml(r0)
            r3.setText(r0)
            kotlinx.serialization.json.JsonElement r0 = r4.icon
            if (r0 == 0) goto L2b
            kotlinx.serialization.json.JsonPrimitive r1 = kotlinx.serialization.json.JsonElementKt.getJsonPrimitive(r0)
            boolean r1 = r1.isString()
            r2 = 1
            if (r1 != r2) goto L2b
            kotlinx.serialization.json.JsonPrimitive r0 = kotlinx.serialization.json.JsonElementKt.getJsonPrimitive(r0)
            java.lang.String r0 = r0.getContent()
            goto L2d
        L2b:
            java.lang.String r0 = ""
        L2d:
            int r1 = r0.hashCode()
            switch(r1) {
                case -1672541659: goto L5a;
                case 738943683: goto L4d;
                case 1078154500: goto L3f;
                case 1804590969: goto L35;
                default: goto L34;
            }
        L34:
            goto L66
        L35:
            java.lang.String r1 = "userSpeechBubble"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L63
            goto L66
        L3f:
            java.lang.String r1 = "userAvatar"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L49
            goto L66
        L49:
            r5 = 2131231242(0x7f08020a, float:1.807856E38)
            goto L66
        L4d:
            java.lang.String r1 = "changes"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L56
            goto L66
        L56:
            r5 = 2131231105(0x7f080181, float:1.8078282E38)
            goto L66
        L5a:
            java.lang.String r1 = "speechBubbles"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L63
            goto L66
        L63:
            r5 = 2131231151(0x7f0801af, float:1.8078375E38)
        L66:
            android.content.res.ColorStateList r6 = android.content.res.ColorStateList.valueOf(r6)
            r6.getClass()
            android.content.res.ColorStateList r7 = android.content.res.ColorStateList.valueOf(r7)
            r7.getClass()
            r0 = 0
            r3.setCompoundDrawablesRelativeWithIntrinsicBounds(r5, r0, r0, r0)
            kotlin.uuid.UuidKt.setCompoundDrawableTintList(r3, r6)
            r3.setTextColor(r7)
            r3.setTag(r4)
            r3.setVisibility(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.views.NotificationActionsOverflowView.setUpViewForLink(android.widget.TextView, org.wikipedia.notifications.db.Notification$Link, int, int, int):void");
    }

    public static void setUpViewForLink$default(NotificationActionsOverflowView notificationActionsOverflowView, TextView textView, Notification.Link link) {
        Context context = notificationActionsOverflowView.getContext();
        TypedValue m = ViewSizeResolver$CC.m(context);
        if (!context.getTheme().resolveAttribute(R.attr.secondary_color, m, true)) {
            m = null;
        }
        if (m == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969935");
            return;
        }
        int i = m.data;
        Context context2 = notificationActionsOverflowView.getContext();
        TypedValue m2 = ViewSizeResolver$CC.m(context2);
        TypedValue typedValue = context2.getTheme().resolveAttribute(R.attr.primary_color, m2, true) ? m2 : null;
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969882");
            return;
        }
        int i2 = typedValue.data;
        notificationActionsOverflowView.getClass();
        setUpViewForLink(textView, link, R.drawable.ic_arrow_forward_black_24dp, i, i2);
    }
}
