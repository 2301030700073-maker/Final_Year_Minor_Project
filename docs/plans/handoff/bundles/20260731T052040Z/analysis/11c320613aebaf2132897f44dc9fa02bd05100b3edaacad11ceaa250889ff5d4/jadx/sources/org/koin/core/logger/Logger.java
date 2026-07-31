package org.koin.core.logger;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation;
import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import androidx.documentfile.provider.TreeDocumentFile;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonObject;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Logger {
    public Object level;

    public static TreeDocumentFile fromTreeUri(Context context, Uri uri) {
        String treeDocumentId = DocumentsContract.getTreeDocumentId(uri);
        if (DocumentsContract.isDocumentUri(context, uri)) {
            treeDocumentId = DocumentsContract.getDocumentId(uri);
        }
        if (treeDocumentId == null) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(uri, "Could not get document ID from Uri: ");
            return null;
        }
        Uri buildDocumentUriUsingTree = DocumentsContract.buildDocumentUriUsingTree(uri, treeDocumentId);
        if (buildDocumentUriUsingTree != null) {
            return new TreeDocumentFile(null, context, buildDocumentUriUsingTree);
        }
        throw new NullPointerException("Failed to build documentUri from a tree: " + uri);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x003a, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean appendGroupSourceInformation(int r8, androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation r9, java.lang.Object r10) {
        /*
            r7 = this;
            java.util.ArrayList r0 = r9.groups
            r1 = 1
            if (r0 != 0) goto La
            r10 = 0
            r7.appendTraceFrame(r8, r9, r10)
            return r1
        La:
            int r2 = r0.size()
            r3 = 0
            r4 = r3
        L10:
            if (r4 >= r2) goto L3a
            java.lang.Object r5 = r0.get(r4)
            boolean r6 = r5 instanceof androidx.compose.runtime.composer.gapbuffer.GapAnchor
            if (r6 == 0) goto L21
            if (r5 == r10) goto L1d
            goto L32
        L1d:
            r7.appendTraceFrame(r3, r9, r5)
            return r1
        L21:
            boolean r6 = r5 instanceof androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation
            if (r6 == 0) goto L35
            r6 = r5
            androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation r6 = (androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation) r6
            boolean r6 = r7.appendGroupSourceInformation(r8, r6, r10)
            if (r6 == 0) goto L32
            r7.appendTraceFrame(r3, r9, r5)
            return r1
        L32:
            int r4 = r4 + 1
            goto L10
        L35:
            java.lang.String r7 = "Unexpected child source info "
            com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(r5, r7)
        L3a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.koin.core.logger.Logger.appendGroupSourceInformation(int, androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation, java.lang.Object):boolean");
    }

    public void appendTraceFrame(int i, GapGroupSourceInformation gapGroupSourceInformation, Object obj) {
        ((ArrayList) this.level).add(new ComposeStackTraceFrame(i, null, null));
    }

    public abstract boolean canRead();

    public abstract boolean canWrite();

    public abstract Logger createDirectory(String str);

    public abstract Logger createFile(String str, String str2);

    public abstract boolean delete();

    public abstract void display(Level level, String str);

    public abstract boolean exists();

    public abstract JsonObject forAvatarExtraction();

    public abstract JsonObject forUploaderUrlExtraction();

    public abstract String getName();

    public abstract String getType();

    public abstract Uri getUri();

    public abstract boolean isDirectory();

    public abstract boolean isFile();

    public abstract long length();

    public abstract Logger[] listFiles();

    public void log(Level level, String str) {
        if (((Level) this.level).compareTo(level) <= 0) {
            display(level, str);
        }
    }

    public void processEdge(int i, Object obj, GapGroupSourceInformation gapGroupSourceInformation, Object obj2) {
        if (Intrinsics.areEqual(obj, Composer.Companion.Empty)) {
            appendTraceFrame(i, gapGroupSourceInformation, null);
        }
    }

    public abstract List suggestionList(String str);
}
