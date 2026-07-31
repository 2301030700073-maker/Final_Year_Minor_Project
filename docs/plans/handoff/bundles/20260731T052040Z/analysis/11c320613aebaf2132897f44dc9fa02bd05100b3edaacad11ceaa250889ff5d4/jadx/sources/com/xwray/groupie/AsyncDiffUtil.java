package com.xwray.groupie;

import java.util.ArrayList;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AsyncDiffUtil {
    public final ConnectionPool asyncDiffUtilCallback;
    public ArrayList groups;
    public int maxScheduledGeneration;

    public AsyncDiffUtil(ConnectionPool connectionPool) {
        this.asyncDiffUtilCallback = connectionPool;
    }
}
