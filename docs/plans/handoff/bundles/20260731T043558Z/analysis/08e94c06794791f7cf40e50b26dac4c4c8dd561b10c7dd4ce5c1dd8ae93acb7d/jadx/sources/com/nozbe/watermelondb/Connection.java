package com.nozbe.watermelondb;

import java.util.ArrayList;

/* loaded from: classes5.dex */
public abstract class Connection {

    public static class Connected extends Connection {
        public final WMDatabaseDriver driver;

        public Connected(WMDatabaseDriver wMDatabaseDriver) {
            this.driver = wMDatabaseDriver;
        }
    }

    public static class Waiting extends Connection {
        public final ArrayList<Runnable> queueInWaiting;

        public Waiting(ArrayList<Runnable> arrayList) {
            this.queueInWaiting = arrayList;
        }
    }

    public ArrayList<Runnable> getQueue() {
        if (this instanceof Connected) {
            return new ArrayList<>();
        }
        if (this instanceof Waiting) {
            return ((Waiting) this).queueInWaiting;
        }
        return null;
    }
}
