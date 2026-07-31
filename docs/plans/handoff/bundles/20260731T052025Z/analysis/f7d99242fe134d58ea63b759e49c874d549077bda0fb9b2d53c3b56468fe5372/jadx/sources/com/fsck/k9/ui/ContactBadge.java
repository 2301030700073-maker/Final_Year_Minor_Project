package com.fsck.k9.ui;

import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.fsck.k9.mail.Address;
import de.hdodenhof.circleimageview.CircleImageView;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ContactBadge extends CircleImageView implements View.OnClickListener {
    public static final String[] EMAIL_LOOKUP_PROJECTION = {"contact_id", "lookup"};
    public String contactEmail;
    public Uri contactUri;
    public Bundle extras;
    public final QueryHandler queryHandler;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class QueryHandler extends AsyncQueryHandler {
        public QueryHandler(ContentResolver contentResolver) {
            super(contentResolver);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0066 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0046  */
        @Override // android.content.AsyncQueryHandler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onQueryComplete(int r9, java.lang.Object r10, android.database.Cursor r11) {
            /*
                r8 = this;
                if (r10 == 0) goto L5
                android.os.Bundle r10 = (android.os.Bundle) r10
                goto La
            L5:
                android.os.Bundle r10 = new android.os.Bundle
                r10.<init>()
            La:
                java.lang.String r0 = "uri_content"
                r1 = 1
                r2 = 0
                r3 = 0
                if (r9 == 0) goto L26
                if (r9 == r1) goto L18
                r9 = r2
                r5 = r9
                r4 = r3
                goto L44
            L18:
                java.lang.String r9 = "mailto"
                java.lang.String r4 = r10.getString(r0)     // Catch: java.lang.Throwable -> L24
                android.net.Uri r9 = android.net.Uri.fromParts(r9, r4, r2)     // Catch: java.lang.Throwable -> L24
                r4 = r1
                goto L28
            L24:
                r8 = move-exception
                goto L3d
            L26:
                r9 = r2
                r4 = r3
            L28:
                if (r11 == 0) goto L43
                boolean r5 = r11.moveToFirst()     // Catch: java.lang.Throwable -> L24
                if (r5 == 0) goto L43
                long r5 = r11.getLong(r3)     // Catch: java.lang.Throwable -> L24
                java.lang.String r7 = r11.getString(r1)     // Catch: java.lang.Throwable -> L24
                android.net.Uri r5 = android.provider.ContactsContract.Contacts.getLookupUri(r5, r7)     // Catch: java.lang.Throwable -> L24
                goto L44
            L3d:
                if (r11 == 0) goto L42
                r11.close()
            L42:
                throw r8
            L43:
                r5 = r2
            L44:
                if (r11 == 0) goto L49
                r11.close()
            L49:
                com.fsck.k9.ui.ContactBadge r8 = com.fsck.k9.ui.ContactBadge.this
                r8.contactUri = r5
                if (r5 != 0) goto L53
                java.lang.String r11 = r8.contactEmail
                if (r11 == 0) goto L54
            L53:
                r3 = r1
            L54:
                r8.setEnabled(r3)
                if (r4 == 0) goto L64
                if (r5 == 0) goto L64
                android.content.Context r9 = r8.getContext()
                r10 = 3
                android.provider.ContactsContract.QuickContact.showQuickContact(r9, r8, r5, r10, r2)
                return
            L64:
                if (r9 == 0) goto L89
                android.content.Intent r11 = new android.content.Intent     // Catch: android.content.ActivityNotFoundException -> L7b
                java.lang.String r2 = "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"
                r11.<init>(r2, r9)     // Catch: android.content.ActivityNotFoundException -> L7b
                r10.remove(r0)     // Catch: android.content.ActivityNotFoundException -> L7b
                r11.putExtras(r10)     // Catch: android.content.ActivityNotFoundException -> L7b
                android.content.Context r9 = r8.getContext()     // Catch: android.content.ActivityNotFoundException -> L7b
                r9.startActivity(r11)     // Catch: android.content.ActivityNotFoundException -> L7b
                return
            L7b:
                android.content.Context r8 = r8.getContext()
                r9 = 2131886788(0x7f1202c4, float:1.9408165E38)
                android.widget.Toast r8 = android.widget.Toast.makeText(r8, r9, r1)
                r8.show()
            L89:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.ui.ContactBadge.QueryHandler.onQueryComplete(int, java.lang.Object, android.database.Cursor):void");
        }
    }

    public ContactBadge(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.extras = null;
        this.queryHandler = new QueryHandler(context.getContentResolver());
        setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Bundle bundle = this.extras;
        if (bundle == null) {
            bundle = new Bundle();
        }
        Bundle bundle2 = bundle;
        if (this.contactUri != null) {
            ContactsContract.QuickContact.showQuickContact(getContext(), this, this.contactUri, 3, (String[]) null);
            return;
        }
        String str = this.contactEmail;
        if (str != null) {
            bundle2.putString("uri_content", str);
            this.queryHandler.startQuery(1, bundle2, Uri.withAppendedPath(ContactsContract.CommonDataKinds.Email.CONTENT_LOOKUP_URI, Uri.encode(this.contactEmail)), EMAIL_LOOKUP_PROJECTION, null, null, null);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ContactBadge.class.getName());
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ContactBadge.class.getName());
    }

    public void setContact(Address address) {
        Bundle bundle = new Bundle();
        bundle.putString("name", address.personal);
        String str = address.address;
        this.contactEmail = str;
        this.extras = bundle;
        this.contactUri = null;
        setEnabled(str != null);
    }

    public ContactBadge(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContactBadge(Context context) {
        this(context, null);
    }
}
