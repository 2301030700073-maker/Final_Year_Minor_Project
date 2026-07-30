package org.fdroid.fdroid.nearby.httpish;

/* loaded from: classes2.dex */
public class FileDetails {
    private String cacheTag;
    private long fileSize;

    public String getCacheTag() {
        return this.cacheTag;
    }

    public long getFileSize() {
        return this.fileSize;
    }

    void setFileSize(int i) {
        this.fileSize = i;
    }

    void setCacheTag(String str) {
        this.cacheTag = str;
    }
}
