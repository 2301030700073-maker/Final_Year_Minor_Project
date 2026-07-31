package org.schabi.newpipe.streams.io;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import androidx.documentfile.provider.TreeDocumentFile;
import j$.nio.file.Files;
import j$.nio.file.LinkOption;
import j$.nio.file.Path;
import j$.nio.file.Paths;
import java.io.IOException;
import java.net.URI;
import okio.Options;
import org.koin.core.logger.Logger;
import org.schabi.newpipe.util.FilePickerActivityHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StoredDirectoryHelper {
    public final Context context;
    public final TreeDocumentFile docTree;
    public final Path ioTree;
    public final String tag;

    public StoredDirectoryHelper(Context context, Uri uri, String str) {
        this.tag = str;
        if ("file".equalsIgnoreCase(uri.getScheme())) {
            this.ioTree = Paths.get(URI.create(uri.toString()));
            return;
        }
        this.context = context;
        try {
            context.getContentResolver().takePersistableUriPermission(uri, 3);
            this.docTree = Logger.fromTreeUri(context, uri);
        } catch (Exception e) {
            throw new IOException(e);
        }
    }

    public static Logger findFileSAFHelper(Context context, Logger logger, String str) {
        Logger logger2 = null;
        if (context == null) {
            for (Logger logger3 : logger.listFiles()) {
                if (str.equals(logger3.getName())) {
                    return logger3;
                }
            }
        } else if (logger.canRead()) {
            ContentResolver contentResolver = context.getContentResolver();
            String lowerCase = str.toLowerCase();
            Cursor query = contentResolver.query(DocumentsContract.buildChildDocumentsUriUsingTree(logger.getUri(), DocumentsContract.getDocumentId(logger.getUri())), new String[]{"_display_name", "document_id"}, "_display_name = ?", new String[]{lowerCase}, null);
            if (query != null) {
                while (query.moveToNext()) {
                    try {
                        if (!query.isNull(0) && query.getString(0).toLowerCase().startsWith(lowerCase)) {
                            Uri buildDocumentUriUsingTree = DocumentsContract.buildDocumentUriUsingTree(logger.getUri(), query.getString(1));
                            TreeDocumentFile treeDocumentFile = new TreeDocumentFile(logger2);
                            treeDocumentFile.mContext = context;
                            treeDocumentFile.mUri = buildDocumentUriUsingTree;
                            query.close();
                            return treeDocumentFile;
                        }
                    } finally {
                    }
                }
                query.close();
                return null;
            }
            if (query != null) {
                query.close();
            }
        }
        return null;
    }

    public static Intent getPicker(Context context) {
        return Options.Companion.useStorageAccessFramework(context) ? new Intent("android.intent.action.OPEN_DOCUMENT_TREE").putExtra("android.content.extra.SHOW_ADVANCED", true).addFlags(67) : new Intent(context, (Class<?>) FilePickerActivityHelper.class).putExtra("android.intent.extra.ALLOW_MULTIPLE", false).putExtra("nononsense.intent.ALLOW_CREATE_DIR", true).putExtra("nononsense.intent.MODE", 1);
    }

    public final StoredFileHelper createFile(String str, String str2, boolean z) {
        TreeDocumentFile treeDocumentFile = this.docTree;
        try {
            StoredFileHelper storedFileHelper = treeDocumentFile == null ? new StoredFileHelper(this.ioTree, str, str2) : new StoredFileHelper(this.context, treeDocumentFile, str, str2, z);
            storedFileHelper.tag = this.tag;
            return storedFileHelper;
        } catch (IOException unused) {
            return null;
        }
    }

    public final Uri findFile(String str) {
        TreeDocumentFile treeDocumentFile = this.docTree;
        if (treeDocumentFile == null) {
            Path resolve = this.ioTree.resolve(str);
            if (Files.exists(resolve, new LinkOption[0])) {
                return Uri.fromFile(resolve.toFile());
            }
            return null;
        }
        Logger findFileSAFHelper = findFileSAFHelper(this.context, treeDocumentFile, str);
        if (findFileSAFHelper == null) {
            return null;
        }
        return findFileSAFHelper.getUri();
    }

    public final Uri getUri() {
        TreeDocumentFile treeDocumentFile = this.docTree;
        return treeDocumentFile == null ? Uri.fromFile(this.ioTree.toFile()) : treeDocumentFile.mUri;
    }

    public final String toString() {
        TreeDocumentFile treeDocumentFile = this.docTree;
        return (treeDocumentFile == null ? Uri.fromFile(this.ioTree.toFile()) : treeDocumentFile.mUri).toString();
    }
}
