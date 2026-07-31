package org.schabi.newpipe.streams.io;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.util.Log;
import androidx.documentfile.provider.TreeDocumentFile;
import j$.io.FileRetargetClass;
import j$.nio.file.Files;
import j$.nio.file.LinkOption;
import j$.nio.file.Path;
import j$.nio.file.Paths;
import j$.nio.file.attribute.FileAttribute;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.net.URI;
import kotlin.ranges.RangesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Options;
import org.koin.core.logger.Logger;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.util.FilePickerActivityHelper;
import us.shandian.giga.io.FileStream;
import us.shandian.giga.io.FileStreamSAF;
import us.shandian.giga.service.DownloadManagerService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class StoredFileHelper implements Serializable {
    public static final String TAG;
    private static final long serialVersionUID = 0;
    public transient Context context;
    public transient Logger docFile;
    public transient Logger docTree;
    public transient Path ioPath;
    protected String source;
    private String sourceTree;
    private String srcName;
    private String srcType;
    protected String tag;

    static {
        int i = MainActivity.$r8$clinit;
        TAG = "StoredFileHelper";
    }

    public StoredFileHelper(Context context, Uri uri, Uri uri2, String str) {
        this.tag = str;
        this.source = uri2.toString();
        if (uri2.getScheme() == null || uri2.getScheme().equalsIgnoreCase("file")) {
            this.ioPath = Paths.get(URI.create(this.source));
        } else {
            TreeDocumentFile treeDocumentFile = new TreeDocumentFile(null);
            treeDocumentFile.mContext = context;
            treeDocumentFile.mUri = uri2;
            this.context = context;
            if (treeDocumentFile.getName() == null) {
                this.source = null;
                return;
            }
            this.docFile = treeDocumentFile;
            try {
                this.context.getContentResolver().takePersistableUriPermission(this.docFile.getUri(), 3);
            } catch (Exception e) {
                if (this.docFile.getName() == null) {
                    throw new IOException(e);
                }
            }
        }
        if (uri != null) {
            if (!"file".equals(uri.getScheme())) {
                this.docTree = Logger.fromTreeUri(context, uri);
            }
            this.sourceTree = uri.toString();
        }
        this.srcName = getName();
        this.srcType = getType();
    }

    public static Intent applyInitialPathToPickerIntent(Context context, Intent intent, Uri uri, String str) {
        File file;
        if (Options.Companion.useStorageAccessFramework(context)) {
            if (uri != null && Build.VERSION.SDK_INT >= 26) {
                return intent.putExtra("android.provider.extra.INITIAL_URI", uri);
            }
        } else if (uri != null || str != null) {
            if (uri == null) {
                file = Environment.getExternalStorageDirectory();
            } else {
                try {
                    file = RangesKt.getFileForUri(uri);
                } catch (Throwable unused) {
                    file = new File(uri.toString());
                }
            }
            if ((!file.exists() || !file.isDirectory()) && ((file = file.getParentFile()) == null || !file.exists())) {
                file = Environment.getExternalStorageDirectory();
            }
            if (str != null) {
                file = new File(file, str);
            }
            return intent.putExtra("nononsense.intent.START_PATH", file.getAbsolutePath());
        }
        return intent;
    }

    public static StoredFileHelper deserialize(StoredFileHelper storedFileHelper, DownloadManagerService downloadManagerService) {
        String str = storedFileHelper.sourceTree;
        Uri parse = str == null ? null : Uri.parse(str);
        if (storedFileHelper.isInvalid()) {
            return new StoredFileHelper(parse, storedFileHelper.srcName, storedFileHelper.srcType, storedFileHelper.tag);
        }
        StoredFileHelper storedFileHelper2 = new StoredFileHelper(downloadManagerService, parse, Uri.parse(storedFileHelper.source), storedFileHelper.tag);
        if (storedFileHelper2.srcName == null) {
            storedFileHelper2.srcName = storedFileHelper.srcName;
        }
        if (storedFileHelper2.srcType == null) {
            storedFileHelper2.srcType = storedFileHelper.srcType;
        }
        return storedFileHelper2;
    }

    public static Intent getNewPicker(Context context, String str, String str2, Uri uri) {
        Intent putExtra;
        if (Options.Companion.useStorageAccessFramework(context)) {
            putExtra = new Intent("android.intent.action.CREATE_DOCUMENT").putExtra("android.content.extra.SHOW_ADVANCED", true).setType(str2).addCategory("android.intent.category.OPENABLE").addFlags(67);
            if (str != null) {
                putExtra.putExtra("android.intent.extra.TITLE", str);
            }
        } else {
            putExtra = new Intent(context, (Class<?>) FilePickerActivityHelper.class).putExtra("android.intent.extra.ALLOW_MULTIPLE", false).putExtra("nononsense.intent.ALLOW_CREATE_DIR", true).putExtra("android.intent.extra.ALLOW_EXISTING_FILE", true).putExtra("nononsense.intent.MODE", 3);
        }
        return applyInitialPathToPickerIntent(context, putExtra, uri, str);
    }

    public static Intent getPicker(Context context, String str) {
        return Options.Companion.useStorageAccessFramework(context) ? new Intent("android.intent.action.OPEN_DOCUMENT").putExtra("android.content.extra.SHOW_ADVANCED", true).setType(str).addCategory("android.intent.category.OPENABLE").addFlags(67) : new Intent(context, (Class<?>) FilePickerActivityHelper.class).putExtra("android.intent.extra.ALLOW_MULTIPLE", false).putExtra("nononsense.intent.ALLOW_CREATE_DIR", true).putExtra("nononsense.intent.SINGLE_CLICK", true).putExtra("nononsense.intent.MODE", 0);
    }

    public final void assertValid() {
        if (this.source != null) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("In invalid state");
    }

    public final boolean canWrite() {
        if (this.source == null) {
            return false;
        }
        Logger logger = this.docFile;
        return logger == null ? Files.isWritable(this.ioPath) : logger.canWrite();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
    
        if (r0.getName() == null) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean create() {
        /*
            r5 = this;
            r5.assertValid()
            org.koin.core.logger.Logger r0 = r5.docFile
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L28
            j$.nio.file.Path r0 = r5.ioPath     // Catch: java.io.IOException -> L11
            j$.nio.file.attribute.FileAttribute[] r3 = new j$.nio.file.attribute.FileAttribute[r2]     // Catch: java.io.IOException -> L11
            j$.nio.file.Files.createFile(r0, r3)     // Catch: java.io.IOException -> L11
            goto L50
        L11:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "Exception while creating "
            r1.<init>(r3)
            j$.nio.file.Path r5 = r5.ioPath
            r1.append(r5)
            java.lang.String r5 = r1.toString()
            java.lang.String r1 = org.schabi.newpipe.streams.io.StoredFileHelper.TAG
            android.util.Log.e(r1, r5, r0)
            return r2
        L28:
            org.koin.core.logger.Logger r0 = r5.docTree
            if (r0 != 0) goto L2e
            r1 = r2
            goto L50
        L2e:
            boolean r0 = r0.canRead()
            if (r0 == 0) goto L78
            org.koin.core.logger.Logger r0 = r5.docTree
            boolean r0 = r0.canWrite()
            if (r0 != 0) goto L3d
            goto L78
        L3d:
            android.content.Context r0 = r5.context     // Catch: java.io.IOException -> L78
            java.lang.String r3 = r5.srcType     // Catch: java.io.IOException -> L78
            java.lang.String r4 = r5.srcName     // Catch: java.io.IOException -> L78
            org.koin.core.logger.Logger r0 = r5.createSAF(r0, r3, r4)     // Catch: java.io.IOException -> L78
            r5.docFile = r0     // Catch: java.io.IOException -> L78
            java.lang.String r0 = r0.getName()     // Catch: java.io.IOException -> L78
            if (r0 != 0) goto L50
            goto L78
        L50:
            if (r1 == 0) goto L77
            org.koin.core.logger.Logger r0 = r5.docFile
            if (r0 != 0) goto L61
            j$.nio.file.Path r0 = r5.ioPath
            java.io.File r0 = r0.toFile()
            android.net.Uri r0 = android.net.Uri.fromFile(r0)
            goto L65
        L61:
            android.net.Uri r0 = r0.getUri()
        L65:
            java.lang.String r0 = r0.toString()
            r5.source = r0
            java.lang.String r0 = r5.getName()
            r5.srcName = r0
            java.lang.String r0 = r5.getType()
            r5.srcType = r0
        L77:
            return r1
        L78:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.streams.io.StoredFileHelper.create():boolean");
    }

    public final Logger createSAF(Context context, String str, String str2) {
        Logger findFileSAFHelper = StoredDirectoryHelper.findFileSAFHelper(context, this.docTree, str2);
        if (findFileSAFHelper != null && findFileSAFHelper.exists() && findFileSAFHelper.isDirectory()) {
            if (!findFileSAFHelper.delete()) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$3("Directory with the same name found but cannot delete");
                return null;
            }
            findFileSAFHelper = null;
        }
        if (findFileSAFHelper != null) {
            return findFileSAFHelper;
        }
        Logger logger = this.docTree;
        if (this.srcType == null) {
            str = "application/octet-stream";
        }
        Logger createFile = logger.createFile(str, str2);
        if (createFile != null) {
            return createFile;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$3("Cannot create the file");
        return null;
    }

    public final boolean delete() {
        if (this.source == null) {
            return true;
        }
        Logger logger = this.docFile;
        if (logger != null) {
            boolean delete = logger.delete();
            try {
                this.context.getContentResolver().releasePersistableUriPermission(this.docFile.getUri(), 3);
            } catch (Exception unused) {
            }
            return delete;
        }
        try {
            return Files.deleteIfExists(this.ioPath);
        } catch (IOException e) {
            Log.e(TAG, "Exception while deleting " + this.ioPath, e);
            return false;
        }
    }

    public final boolean equals(StoredFileHelper storedFileHelper) {
        boolean z;
        String str;
        if (this != storedFileHelper) {
            String str2 = this.sourceTree;
            String lowerCase = str2 == null ? null : str2.toLowerCase();
            String str3 = this.sourceTree;
            String lowerCase2 = str3 != null ? str3.toLowerCase() : null;
            if (lowerCase == null && lowerCase2 == null) {
                z = false;
            } else {
                z = (lowerCase == null) != (lowerCase2 == null) ? true : !lowerCase.equals(lowerCase2);
            }
            if (!z) {
                if (isInvalid() || storedFileHelper.isInvalid()) {
                    String str4 = this.srcName;
                    if (str4 == null || (str = storedFileHelper.srcName) == null || this.srcType == null || storedFileHelper.srcType == null || !str4.equalsIgnoreCase(str) || !this.srcType.equalsIgnoreCase(storedFileHelper.srcType)) {
                    }
                } else {
                    assertValid();
                    boolean z2 = this.docFile == null;
                    storedFileHelper.assertValid();
                    if (z2 == (storedFileHelper.docFile == null)) {
                        assertValid();
                        Logger logger = this.docFile;
                        return logger == null ? this.ioPath.equals(storedFileHelper.ioPath) : DocumentsContract.getDocumentId(logger.getUri()).equalsIgnoreCase(DocumentsContract.getDocumentId(storedFileHelper.docFile.getUri()));
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final boolean existsAsFile() {
        Logger logger;
        if (this.source != null && ((logger = this.docFile) != null || this.ioPath != null)) {
            if (logger == null) {
                return Files.isRegularFile(this.ioPath, new LinkOption[0]);
            }
            if (logger.exists() && this.docFile.isFile()) {
                return true;
            }
        }
        return false;
    }

    public final String getName() {
        if (this.source == null) {
            return this.srcName;
        }
        Logger logger = this.docFile;
        if (logger == null) {
            return this.ioPath.getFileName().toString();
        }
        String name = logger.getName();
        return name == null ? this.srcName : name;
    }

    public final Uri getParentUri() {
        assertValid();
        String str = this.sourceTree;
        if (str == null) {
            return null;
        }
        return Uri.parse(str);
    }

    public final SharpStream getStream() {
        assertValid();
        return this.docFile == null ? new FileStream(this.ioPath.toFile()) : new FileStreamSAF(this.context.getContentResolver(), this.docFile.getUri());
    }

    public final String getTag() {
        return this.tag;
    }

    public final String getType() {
        Logger logger;
        if (this.source == null || (logger = this.docFile) == null) {
            return this.srcType;
        }
        String type = logger.getType();
        return type == null ? this.srcType : type;
    }

    public final Uri getUri() {
        assertValid();
        Logger logger = this.docFile;
        return logger == null ? Uri.fromFile(this.ioPath.toFile()) : logger.getUri();
    }

    public final void invalidate() {
        if (this.source == null) {
            return;
        }
        this.srcName = getName();
        this.srcType = getType();
        this.source = null;
        this.docTree = null;
        this.docFile = null;
        this.ioPath = null;
        this.context = null;
    }

    public final boolean isInvalid() {
        return this.source == null;
    }

    public final long length() {
        assertValid();
        Logger logger = this.docFile;
        if (logger != null) {
            return logger.length();
        }
        try {
            return Files.size(this.ioPath);
        } catch (IOException e) {
            Log.e(TAG, "Exception while getting the size of " + this.ioPath, e);
            return 0L;
        }
    }

    public final String toString() {
        if (this.source == null) {
            return "[Invalid state] name=" + this.srcName + "  type=" + this.srcType + "  tag=" + this.tag;
        }
        StringBuilder sb = new StringBuilder("sourceFile=");
        sb.append(this.source);
        sb.append("  treeSource=");
        String str = this.sourceTree;
        if (str == null) {
            str = "";
        }
        sb.append(str);
        sb.append("  tag=");
        sb.append(this.tag);
        return sb.toString();
    }

    public StoredFileHelper(Uri uri, String str, String str2, String str3) {
        this.source = null;
        this.srcName = str;
        this.srcType = str2 == null ? "application/octet-stream" : str2;
        if (uri != null) {
            this.sourceTree = uri.toString();
        }
        this.tag = str3;
    }

    public StoredFileHelper(Context context, TreeDocumentFile treeDocumentFile, String str, String str2, boolean z) {
        Logger createSAF;
        this.docTree = treeDocumentFile;
        this.context = context;
        if (z) {
            createSAF = treeDocumentFile.createFile(str2, str);
            if (createSAF == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$3("Cannot create the file");
                throw null;
            }
        } else {
            createSAF = createSAF(context, str2, str);
        }
        this.docFile = createSAF;
        this.source = createSAF.getUri().toString();
        this.sourceTree = this.docTree.getUri().toString();
        this.srcName = this.docFile.getName();
        this.srcType = this.docFile.getType();
    }

    public StoredFileHelper(Path path, String str, String str2) {
        Path resolve = path.resolve(str);
        this.ioPath = resolve;
        Files.deleteIfExists(resolve);
        Files.createFile(this.ioPath, new FileAttribute[0]);
        this.source = Uri.fromFile(this.ioPath.toFile()).toString();
        this.sourceTree = Uri.fromFile(path.toFile()).toString();
        this.srcName = this.ioPath.getFileName().toString();
        this.srcType = str2;
    }

    public StoredFileHelper(Context context, Uri uri, String str) {
        if (FilePickerActivityHelper.isOwnFileUri(context, uri)) {
            File fileForUri = RangesKt.getFileForUri(uri);
            this.ioPath = FileRetargetClass.toPath(fileForUri);
            this.source = Uri.fromFile(fileForUri).toString();
        } else {
            TreeDocumentFile treeDocumentFile = new TreeDocumentFile(null);
            treeDocumentFile.mContext = context;
            treeDocumentFile.mUri = uri;
            this.docFile = treeDocumentFile;
            this.source = uri.toString();
        }
        this.context = context;
        this.srcType = str;
    }
}
