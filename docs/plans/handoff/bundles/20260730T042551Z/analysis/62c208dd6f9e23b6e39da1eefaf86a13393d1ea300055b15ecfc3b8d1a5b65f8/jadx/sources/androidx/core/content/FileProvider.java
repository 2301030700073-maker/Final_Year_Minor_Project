package androidx.core.content;

import android.annotation.SuppressLint;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.facebook.internal.FacebookRequestErrorClassification;
import defpackage.C0466Ra;
import defpackage.C4122zt;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class FileProvider extends ContentProvider {

    /* renamed from: break, reason: not valid java name */
    public String f6513break;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cif f6514do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f6515do = new Object();

    /* renamed from: for, reason: not valid java name */
    public final int f6516for = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String[] f6512do = {"_display_name", "_size"};

    /* renamed from: do, reason: not valid java name */
    public static final File f6510do = new File("/");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final HashMap<String, Cif> f6511do = new HashMap<>();

    /* renamed from: androidx.core.content.FileProvider$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static File[] m3716do(Context context) {
            return context.getExternalMediaDirs();
        }
    }

    /* renamed from: androidx.core.content.FileProvider$for, reason: invalid class name */
    public static class Cfor implements Cif {

        /* renamed from: do, reason: not valid java name */
        public final HashMap<String, File> f6517do = new HashMap<>();

        @Override // androidx.core.content.FileProvider.Cif
        /* renamed from: do, reason: not valid java name */
        public final File mo3717do(Uri uri) {
            String encodedPath = uri.getEncodedPath();
            boolean z = true;
            int indexOf = encodedPath.indexOf(47, 1);
            String decode = Uri.decode(encodedPath.substring(1, indexOf));
            String decode2 = Uri.decode(encodedPath.substring(indexOf + 1));
            File file = this.f6517do.get(decode);
            if (file == null) {
                throw new IllegalArgumentException("Unable to find configured root for " + uri);
            }
            File file2 = new File(file, decode2);
            try {
                File canonicalFile = file2.getCanonicalFile();
                String path = canonicalFile.getPath();
                String path2 = file.getPath();
                String m3712do = FileProvider.m3712do(path);
                String m3712do2 = FileProvider.m3712do(path2);
                if (!m3712do.equals(m3712do2)) {
                    if (!m3712do.startsWith(m3712do2 + '/')) {
                        z = false;
                    }
                }
                if (z) {
                    return canonicalFile;
                }
                throw new SecurityException("Resolved path jumped beyond configured root");
            } catch (IOException unused) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file2);
            }
        }
    }

    /* renamed from: androidx.core.content.FileProvider$if, reason: invalid class name */
    public interface Cif {
        /* renamed from: do */
        File mo3717do(Uri uri);
    }

    /* renamed from: do, reason: not valid java name */
    public static String m3712do(String str) {
        return (str.length() <= 0 || str.charAt(str.length() + (-1)) != '/') ? str : str.substring(0, str.length() - 1);
    }

    /* renamed from: for, reason: not valid java name */
    public static Cif m3713for(Context context, int i, String str) {
        Cif cif;
        HashMap<String, Cif> hashMap = f6511do;
        synchronized (hashMap) {
            cif = hashMap.get(str);
            if (cif == null) {
                try {
                    try {
                        cif = m3714new(context, i, str);
                        hashMap.put(str, cif);
                    } catch (XmlPullParserException e) {
                        throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e);
                    }
                } catch (IOException e2) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e2);
                }
            }
        }
        return cif;
    }

    /* renamed from: new, reason: not valid java name */
    public static Cfor m3714new(Context context, int i, String str) {
        Cfor cfor = new Cfor();
        ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(str, 128);
        if (resolveContentProvider == null) {
            throw new IllegalArgumentException(C4122zt.m8824for("Couldn't find meta-data for provider with authority ", str));
        }
        if (resolveContentProvider.metaData == null && i != 0) {
            Bundle bundle = new Bundle(1);
            resolveContentProvider.metaData = bundle;
            bundle.putInt("android.support.FILE_PROVIDER_PATHS", i);
        }
        XmlResourceParser loadXmlMetaData = resolveContentProvider.loadXmlMetaData(context.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
        if (loadXmlMetaData == null) {
            throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
        }
        while (true) {
            int next = loadXmlMetaData.next();
            if (next == 1) {
                return cfor;
            }
            if (next == 2) {
                String name = loadXmlMetaData.getName();
                File file = null;
                String attributeValue = loadXmlMetaData.getAttributeValue(null, FacebookRequestErrorClassification.KEY_NAME);
                String attributeValue2 = loadXmlMetaData.getAttributeValue(null, "path");
                if ("root-path".equals(name)) {
                    file = f6510do;
                } else if ("files-path".equals(name)) {
                    file = context.getFilesDir();
                } else if ("cache-path".equals(name)) {
                    file = context.getCacheDir();
                } else if ("external-path".equals(name)) {
                    file = Environment.getExternalStorageDirectory();
                } else if ("external-files-path".equals(name)) {
                    File[] externalFilesDirs = C0466Ra.getExternalFilesDirs(context, null);
                    if (externalFilesDirs.length > 0) {
                        file = externalFilesDirs[0];
                    }
                } else if ("external-cache-path".equals(name)) {
                    File[] externalCacheDirs = C0466Ra.getExternalCacheDirs(context);
                    if (externalCacheDirs.length > 0) {
                        file = externalCacheDirs[0];
                    }
                } else if ("external-media-path".equals(name)) {
                    File[] m3716do = Cdo.m3716do(context);
                    if (m3716do.length > 0) {
                        file = m3716do[0];
                    }
                }
                if (file == null) {
                    continue;
                } else {
                    if (attributeValue2 != null) {
                        file = new File(file, attributeValue2);
                    }
                    if (TextUtils.isEmpty(attributeValue)) {
                        throw new IllegalArgumentException("Name must not be empty");
                    }
                    try {
                        cfor.f6517do.put(attributeValue, file.getCanonicalFile());
                    } catch (IOException e) {
                        throw new IllegalArgumentException("Failed to resolve canonical path for " + file, e);
                    }
                }
            }
        }
    }

    @Override // android.content.ContentProvider
    public final void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        }
        if (!providerInfo.grantUriPermissions) {
            throw new SecurityException("Provider must grant uri permissions");
        }
        String str = providerInfo.authority.split(";")[0];
        synchronized (this.f6515do) {
            this.f6513break = str;
        }
        HashMap<String, Cif> hashMap = f6511do;
        synchronized (hashMap) {
            hashMap.remove(str);
        }
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return m3715if().mo3717do(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        File mo3717do = m3715if().mo3717do(uri);
        int lastIndexOf = mo3717do.getName().lastIndexOf(46);
        if (lastIndexOf < 0) {
            return "application/octet-stream";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(mo3717do.getName().substring(lastIndexOf + 1));
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
    }

    @Override // android.content.ContentProvider
    public final String getTypeAnonymous(Uri uri) {
        return "application/octet-stream";
    }

    /* renamed from: if, reason: not valid java name */
    public final Cif m3715if() {
        Cif cif;
        synchronized (this.f6515do) {
            if (this.f6513break == null) {
                throw new NullPointerException("mAuthority is null. Did you override attachInfo and did not call super.attachInfo()?");
            }
            if (this.f6514do == null) {
                this.f6514do = m3713for(getContext(), this.f6516for, this.f6513break);
            }
            cif = this.f6514do;
        }
        return cif;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    @SuppressLint({"UnknownNullness"})
    public final ParcelFileDescriptor openFile(Uri uri, String str) {
        int i;
        File mo3717do = m3715if().mo3717do(uri);
        if ("r".equals(str)) {
            i = 268435456;
        } else if ("w".equals(str) || "wt".equals(str)) {
            i = 738197504;
        } else if ("wa".equals(str)) {
            i = 704643072;
        } else if ("rw".equals(str)) {
            i = 939524096;
        } else {
            if (!"rwt".equals(str)) {
                throw new IllegalArgumentException(C4122zt.m8824for("Invalid mode: ", str));
            }
            i = 1006632960;
        }
        return ParcelFileDescriptor.open(mo3717do, i);
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i;
        File mo3717do = m3715if().mo3717do(uri);
        String queryParameter = uri.getQueryParameter("displayName");
        if (strArr == null) {
            strArr = f6512do;
        }
        String[] strArr3 = new String[strArr.length];
        Object[] objArr = new Object[strArr.length];
        int i2 = 0;
        for (String str3 : strArr) {
            if ("_display_name".equals(str3)) {
                strArr3[i2] = "_display_name";
                i = i2 + 1;
                objArr[i2] = queryParameter == null ? mo3717do.getName() : queryParameter;
            } else if ("_size".equals(str3)) {
                strArr3[i2] = "_size";
                i = i2 + 1;
                objArr[i2] = Long.valueOf(mo3717do.length());
            }
            i2 = i;
        }
        String[] strArr4 = new String[i2];
        System.arraycopy(strArr3, 0, strArr4, 0, i2);
        Object[] objArr2 = new Object[i2];
        System.arraycopy(objArr, 0, objArr2, 0, i2);
        MatrixCursor matrixCursor = new MatrixCursor(strArr4, 1);
        matrixCursor.addRow(objArr2);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }
}
