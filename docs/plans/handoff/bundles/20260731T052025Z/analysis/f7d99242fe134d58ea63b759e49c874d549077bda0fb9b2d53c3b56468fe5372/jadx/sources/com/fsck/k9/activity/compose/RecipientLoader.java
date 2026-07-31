package com.fsck.k9.activity.compose;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.loader.content.AsyncTaskLoader;
import androidx.loader.content.Loader$ForceLoadContentObserver;
import androidx.tracing.TraceApi29Impl;
import androidx.viewpager.widget.ViewPager;
import app.k9mail.core.android.common.database.EmptyCursor;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.view.RecipientSelectView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class RecipientLoader extends AsyncTaskLoader {
    public final Address[] addresses;
    public List cachedRecipients;
    public final Uri contactUri;
    public final ContentResolver contentResolver;
    public final String cryptoProvider;
    public final Uri lookupKeyUri;
    public Loader$ForceLoadContentObserver observerContact;
    public Loader$ForceLoadContentObserver observerKey;
    public final String query;
    public static final String[] PROJECTION = {"_id", "display_name", "lookup", "data1", "data2", "data3", "contact_id", "photo_thumb_uri", "times_contacted", "sort_key", "starred"};
    public static final String[] PROJECTION_NICKNAME = {"contact_id"};
    public static final String[] PROJECTION_CRYPTO_ADDRESSES = {"address", "uid_address"};
    public static final String[] PROJECTION_CRYPTO_STATUS = {"address", "uid_key_status", "autocrypt_key_status"};
    public static final ViewPager.AnonymousClass1 RECIPIENT_COMPARATOR = new ViewPager.AnonymousClass1(15);

    public RecipientLoader(Context context, String str, Uri uri, boolean z) {
        super(context);
        this.query = null;
        this.addresses = null;
        this.contactUri = z ? null : uri;
        this.lookupKeyUri = z ? uri : null;
        this.cryptoProvider = str;
        this.contentResolver = context.getContentResolver();
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public void deliverResult(List list) {
        this.cachedRecipients = list;
        if (this.mStarted) {
            super.deliverResult((Object) list);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00ad A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void fillContactDataFromCursor(android.database.Cursor r17, java.util.ArrayList r18, java.util.HashMap r19) {
        /*
            r16 = this;
            r0 = r17
            r1 = r19
        L4:
            boolean r2 = r0.moveToNext()
            if (r2 == 0) goto Lb1
            r2 = 1
            java.lang.String r4 = r0.getString(r2)
            r3 = 3
            java.lang.String r5 = r0.getString(r3)
            if (r5 == 0) goto Lab
            boolean r6 = okhttp3.Cookie.Companion.isASCII(r5)
            if (r6 == 0) goto Lab
            boolean r6 = r1.containsKey(r5)
            if (r6 == 0) goto L23
            goto L4
        L23:
            r6 = 6
            long r7 = r0.getLong(r6)
            r6 = 2
            java.lang.String r9 = r0.getString(r6)
            r10 = 8
            int r10 = r0.getInt(r10)
            r11 = 9
            java.lang.String r11 = r0.getString(r11)
            r12 = 10
            int r12 = r0.getInt(r12)
            if (r12 != r2) goto L43
            r12 = r2
            goto L44
        L43:
            r12 = 0
        L44:
            r13 = 4
            int r14 = r0.getInt(r13)
            if (r14 == 0) goto L7b
            r15 = r16
            android.content.Context r13 = r15.mContext
            if (r14 == r2) goto L73
            if (r14 == r6) goto L6b
            if (r14 == r3) goto L63
            r2 = 4
            if (r14 == r2) goto L5a
            r6 = 0
            goto L83
        L5a:
            r2 = 2131886539(0x7f1201cb, float:1.940766E38)
            java.lang.String r2 = r13.getString(r2)
        L61:
            r6 = r2
            goto L83
        L63:
            r2 = 2131886540(0x7f1201cc, float:1.9407662E38)
            java.lang.String r2 = r13.getString(r2)
            goto L61
        L6b:
            r2 = 2131886541(0x7f1201cd, float:1.9407664E38)
            java.lang.String r2 = r13.getString(r2)
            goto L61
        L73:
            r2 = 2131886538(0x7f1201ca, float:1.9407658E38)
            java.lang.String r2 = r13.getString(r2)
            goto L61
        L7b:
            r15 = r16
            r2 = 5
            java.lang.String r2 = r0.getString(r2)
            goto L61
        L83:
            com.fsck.k9.view.RecipientSelectView$Recipient r3 = new com.fsck.k9.view.RecipientSelectView$Recipient
            r3.<init>(r4, r5, r6, r7, r9, r10, r11, r12)
            com.fsck.k9.mail.Address r2 = r3.address
            java.lang.String r2 = r2.address
            if (r2 == 0) goto Lad
            r2 = 7
            boolean r4 = r0.isNull(r2)
            if (r4 == 0) goto L97
            r2 = 0
            goto L9f
        L97:
            java.lang.String r2 = r0.getString(r2)
            android.net.Uri r2 = android.net.Uri.parse(r2)
        L9f:
            r3.photoThumbnailUri = r2
            r1.put(r5, r3)
            r2 = r18
            r2.add(r3)
            goto L4
        Lab:
            r15 = r16
        Lad:
            r2 = r18
            goto L4
        Lb1:
            r0.close()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.activity.compose.RecipientLoader.fillContactDataFromCursor(android.database.Cursor, java.util.ArrayList, java.util.HashMap):void");
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.loader.content.AsyncTaskLoader
    public final Object loadInBackground() {
        Uri lookupContact;
        String str;
        boolean z;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        String str2 = this.cryptoProvider;
        ContentResolver contentResolver = this.contentResolver;
        int i = 0;
        Address[] addressArr = this.addresses;
        if (addressArr != null) {
            for (Address address : addressArr) {
                if (Cookie.Companion.isASCII(address.address)) {
                    RecipientSelectView.Recipient recipient = new RecipientSelectView.Recipient(address);
                    arrayList.add(recipient);
                    hashMap.put(address.address, recipient);
                }
            }
        } else {
            String[] strArr = PROJECTION;
            Uri uri = this.contactUri;
            if (uri != null) {
                Cursor query = this.contentResolver.query(uri, strArr, null, null, null);
                if (query != null) {
                    fillContactDataFromCursor(query, arrayList, hashMap);
                }
            } else {
                Context context = this.mContext;
                String str3 = this.query;
                if (str3 != null) {
                    Uri uri2 = ContactsContract.CommonDataKinds.Email.CONTENT_URI;
                    String str4 = "%";
                    Cursor query2 = TraceApi29Impl.checkSelfPermission(context, "android.permission.READ_CONTACTS") == 0 ? this.contentResolver.query(ContactsContract.Data.CONTENT_URI, PROJECTION_NICKNAME, "data1 LIKE ? AND mimetype = ?", new String[]{CameraDevices$CC.m("%", str3, "%"), "vnd.android.cursor.item/nickname"}, null) : new EmptyCursor();
                    if (query2 == null) {
                        z = false;
                        str = "%";
                    } else {
                        boolean z3 = false;
                        while (query2.moveToNext()) {
                            try {
                                String str5 = str4;
                                fillContactDataFromCursor(this.contentResolver.query(uri2, strArr, "contact_id = ?", new String[]{query2.getString(i)}, "times_contacted DESC, sort_key,is_super_primary DESC, is_primary DESC, _id"), arrayList, hashMap);
                                str4 = str5;
                                i = 0;
                                z3 = true;
                            } catch (Throwable th) {
                                query2.close();
                                throw th;
                            }
                        }
                        str = str4;
                        query2.close();
                        z = z3;
                    }
                    String m = CameraDevices$CC.m(str, str3, str);
                    Uri uri3 = ContactsContract.CommonDataKinds.Email.CONTENT_URI;
                    Cursor query3 = TraceApi29Impl.checkSelfPermission(context, "android.permission.READ_CONTACTS") == 0 ? this.contentResolver.query(uri3, strArr, "display_name LIKE ?  OR (data1 LIKE ? AND mimetype = 'vnd.android.cursor.item/email_v2')", new String[]{m, m}, "times_contacted DESC, sort_key,is_super_primary DESC, is_primary DESC, _id") : null;
                    if (query3 == null) {
                        z2 = false;
                    } else {
                        fillContactDataFromCursor(query3, arrayList, hashMap);
                        z2 = true;
                    }
                    if (z2 | z) {
                        Collections.sort(arrayList, RECIPIENT_COMPARATOR);
                        if (this.observerContact != null) {
                            Loader$ForceLoadContentObserver loader$ForceLoadContentObserver = new Loader$ForceLoadContentObserver(this);
                            this.observerContact = loader$ForceLoadContentObserver;
                            contentResolver.registerContentObserver(uri3, false, loader$ForceLoadContentObserver);
                        }
                    }
                    if (str2 != null) {
                        try {
                            Cursor query4 = this.contentResolver.query(Uri.parse("content://" + str2 + ".provider.exported/autocrypt_status"), PROJECTION_CRYPTO_ADDRESSES, null, new String[]{str + str3 + str}, null);
                            if (query4 != null) {
                                while (query4.moveToNext()) {
                                    String string = query4.getString(1);
                                    Pattern pattern = Address.ATOM;
                                    for (Address address2 : K9MailLib.parseUnencoded(string)) {
                                        String str6 = address2.address;
                                        if (Cookie.Companion.isASCII(str6) && !hashMap.containsKey(str6)) {
                                            RecipientSelectView.Recipient recipient2 = new RecipientSelectView.Recipient(address2);
                                            arrayList.add(recipient2);
                                            hashMap.put(str6, recipient2);
                                        }
                                    }
                                }
                                query4.close();
                            }
                        } catch (Exception e) {
                            Log.e(e, "Couldn't obtain recipients from crypto provider!", new Object[0]);
                        }
                    }
                } else {
                    Uri uri4 = this.lookupKeyUri;
                    if (uri4 == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("loader must be initialized with query or list of addresses!");
                        return null;
                    }
                    if (TraceApi29Impl.checkSelfPermission(context, "android.permission.READ_CONTACTS") == 0 && (lookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uri4)) != null) {
                        Cursor query5 = this.contentResolver.query(ContactsContract.CommonDataKinds.Email.CONTENT_URI, strArr, "contact_id=?", new String[]{lookupContact.getLastPathSegment()}, null);
                        if (query5 != null) {
                            fillContactDataFromCursor(query5, arrayList, hashMap);
                        }
                    }
                }
            }
        }
        if (!arrayList.isEmpty() && str2 != null) {
            ArrayList arrayList2 = new ArrayList(hashMap.keySet());
            String[] strArr2 = (String[]) arrayList2.toArray(new String[arrayList2.size()]);
            Uri parse = Uri.parse("content://" + str2 + ".provider.exported/autocrypt_status");
            try {
                Cursor query6 = this.contentResolver.query(parse, PROJECTION_CRYPTO_STATUS, null, strArr2, null);
                Iterator it = hashMap.values().iterator();
                while (it.hasNext()) {
                    ((RecipientSelectView.Recipient) it.next()).cryptoStatus = 2;
                }
                if (query6 != null) {
                    while (query6.moveToNext()) {
                        String string2 = query6.getString(0);
                        int i2 = query6.getInt(1);
                        int i3 = query6.getInt(2);
                        if (i2 <= i3) {
                            i2 = i3;
                        }
                        Pattern pattern2 = Address.ATOM;
                        for (Address address3 : K9MailLib.parseUnencoded(string2)) {
                            Object obj = address3.address;
                            if (hashMap.containsKey(obj)) {
                                RecipientSelectView.Recipient recipient3 = (RecipientSelectView.Recipient) hashMap.get(obj);
                                if (i2 != 1) {
                                    if (i2 == 2 && recipient3.cryptoStatus != 4) {
                                        recipient3.cryptoStatus = 4;
                                    }
                                } else if (recipient3.cryptoStatus == 2) {
                                    recipient3.cryptoStatus = 3;
                                }
                            }
                        }
                    }
                    query6.close();
                    if (this.observerKey != null) {
                        Loader$ForceLoadContentObserver loader$ForceLoadContentObserver2 = new Loader$ForceLoadContentObserver(this);
                        this.observerKey = loader$ForceLoadContentObserver2;
                        contentResolver.registerContentObserver(parse, false, loader$ForceLoadContentObserver2);
                    }
                }
            } catch (SecurityException unused) {
            }
        }
        return arrayList;
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public final void onAbandon() {
        Loader$ForceLoadContentObserver loader$ForceLoadContentObserver = this.observerKey;
        ContentResolver contentResolver = this.contentResolver;
        if (loader$ForceLoadContentObserver != null) {
            contentResolver.unregisterContentObserver(loader$ForceLoadContentObserver);
        }
        Loader$ForceLoadContentObserver loader$ForceLoadContentObserver2 = this.observerContact;
        if (loader$ForceLoadContentObserver2 != null) {
            contentResolver.unregisterContentObserver(loader$ForceLoadContentObserver2);
        }
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public final void onStartLoading() {
        List list = this.cachedRecipients;
        if (list != null) {
            super.deliverResult((Object) list);
        } else if (takeContentChanged() || this.cachedRecipients == null) {
            forceLoad();
        }
    }

    public RecipientLoader(Context context, String str, Address... addressArr) {
        super(context);
        this.query = null;
        this.addresses = addressArr;
        this.contactUri = null;
        this.cryptoProvider = str;
        this.lookupKeyUri = null;
        this.contentResolver = context.getContentResolver();
    }

    public RecipientLoader(Context context, String str, String str2) {
        super(context);
        this.query = str2;
        this.lookupKeyUri = null;
        this.addresses = null;
        this.contactUri = null;
        this.cryptoProvider = str;
        this.contentResolver = context.getContentResolver();
    }
}
