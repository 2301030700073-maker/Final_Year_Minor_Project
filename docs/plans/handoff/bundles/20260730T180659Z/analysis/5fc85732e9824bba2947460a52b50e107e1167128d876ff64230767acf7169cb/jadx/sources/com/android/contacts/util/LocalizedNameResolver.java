package com.android.contacts.util;

import android.accounts.AccountManager;
import android.accounts.AuthenticatorDescription;
import android.content.Context;
import android.content.res.XmlResourceParser;
import com.android.contacts.model.account.ExternalAccountType;

/* loaded from: classes.dex */
public class LocalizedNameResolver {
    public static String getAllContactsName(Context context, String str) {
        if (context == null) {
            throw new IllegalArgumentException("Context must not be null");
        }
        if (str == null) {
            return null;
        }
        return resolveAllContactsName(context, str);
    }

    private static String resolveAllContactsName(Context context, String str) {
        for (AuthenticatorDescription authenticatorDescription : AccountManager.get(context).getAuthenticatorTypes()) {
            if (str.equals(authenticatorDescription.type)) {
                return resolveAllContactsNameFromMetaData(context, authenticatorDescription.packageName);
            }
        }
        return null;
    }

    private static String resolveAllContactsNameFromMetaData(Context context, String str) {
        XmlResourceParser loadContactsXml = ExternalAccountType.loadContactsXml(context, str);
        if (loadContactsXml != null) {
            return loadAllContactsNameFromXml(context, loadContactsXml, str);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006e, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0035, code lost:
    
        r9 = r8.obtainStyledAttributes(r1, com.android.contacts.R$styleable.ContactsDataKind);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x003c, code lost:
    
        r2 = r9.getNonResourceString(5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0040, code lost:
    
        if (r2 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0045, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0047, code lost:
    
        r1 = r9.getResourceId(5, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x004b, code lost:
    
        if (r1 != 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0050, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0060, code lost:
    
        return r8.getPackageManager().getResourcesForApplication(r10).getString(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0064, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0068, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0069, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x006a, code lost:
    
        r9.recycle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x006d, code lost:
    
        throw r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String loadAllContactsNameFromXml(android.content.Context r8, org.xmlpull.v1.XmlPullParser r9, java.lang.String r10) {
        /*
            java.lang.String r0 = "Problem reading XML"
            android.util.AttributeSet r1 = android.util.Xml.asAttributeSet(r9)     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
        L6:
            int r2 = r9.next()     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
            r3 = 1
            r4 = 2
            if (r2 == r4) goto L11
            if (r2 == r3) goto L11
            goto L6
        L11:
            if (r2 != r4) goto L6f
            int r2 = r9.getDepth()     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
        L17:
            int r5 = r9.next()     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
            r6 = 3
            r7 = 0
            if (r5 != r6) goto L25
            int r6 = r9.getDepth()     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
            if (r6 <= r2) goto L6e
        L25:
            if (r5 == r3) goto L6e
            java.lang.String r6 = r9.getName()     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
            if (r5 != r4) goto L17
            java.lang.String r5 = "ContactsDataKind"
            boolean r5 = r5.equals(r6)     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
            if (r5 == 0) goto L17
            int[] r9 = com.android.contacts.R$styleable.ContactsDataKind     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
            android.content.res.TypedArray r9 = r8.obtainStyledAttributes(r1, r9)     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
            r1 = 5
            java.lang.String r2 = r9.getNonResourceString(r1)     // Catch: java.lang.Throwable -> L69
            if (r2 == 0) goto L46
            r9.recycle()     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
            return r2
        L46:
            r2 = 0
            int r1 = r9.getResourceId(r1, r2)     // Catch: java.lang.Throwable -> L69
            if (r1 != 0) goto L51
            r9.recycle()     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
            return r7
        L51:
            android.content.pm.PackageManager r8 = r8.getPackageManager()     // Catch: java.lang.Throwable -> L69
            android.content.res.Resources r8 = r8.getResourcesForApplication(r10)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L65 java.lang.Throwable -> L69
            java.lang.String r8 = r8.getString(r1)     // Catch: android.content.res.Resources.NotFoundException -> L61 java.lang.Throwable -> L69
            r9.recycle()     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
            return r8
        L61:
            r9.recycle()     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
            return r7
        L65:
            r9.recycle()     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
            return r7
        L69:
            r8 = move-exception
            r9.recycle()     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
            throw r8     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
        L6e:
            return r7
        L6f:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
            java.lang.String r9 = "No start tag found"
            r8.<init>(r9)     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
            throw r8     // Catch: java.io.IOException -> L77 org.xmlpull.v1.XmlPullParserException -> L7e
        L77:
            r8 = move-exception
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            r9.<init>(r0, r8)
            throw r9
        L7e:
            r8 = move-exception
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            r9.<init>(r0, r8)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.LocalizedNameResolver.loadAllContactsNameFromXml(android.content.Context, org.xmlpull.v1.XmlPullParser, java.lang.String):java.lang.String");
    }
}
