package com.android.contacts.group;

/* loaded from: classes.dex */
public final class GroupListItem {
    private final long mGroupId;
    private final boolean mIsReadOnly;
    private final int mMemberCount;
    private final String mSystemId;
    private final String mTitle;

    public GroupListItem(String str, String str2, String str3, long j, String str4, boolean z, int i, boolean z2, String str5) {
        this.mGroupId = j;
        this.mTitle = str4;
        this.mMemberCount = i;
        this.mIsReadOnly = z2;
        this.mSystemId = str5;
    }

    public long getGroupId() {
        return this.mGroupId;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public int getMemberCount() {
        return this.mMemberCount;
    }

    public boolean isReadOnly() {
        return this.mIsReadOnly;
    }

    public String getSystemId() {
        return this.mSystemId;
    }
}
