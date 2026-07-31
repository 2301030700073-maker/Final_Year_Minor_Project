package us.shandian.giga.get;

import java.io.Serializable;
import java.util.Calendar;
import org.schabi.newpipe.streams.io.StoredFileHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Mission implements Serializable {
    private static final long serialVersionUID = 1;
    public char kind;
    public long length;
    public String source;
    public StoredFileHelper storage;
    public long timestamp;

    public boolean delete() {
        StoredFileHelper storedFileHelper = this.storage;
        if (storedFileHelper != null) {
            return storedFileHelper.delete();
        }
        return true;
    }

    public final String toString() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(this.timestamp);
        StringBuilder sb = new StringBuilder("[");
        sb.append(calendar.getTime().toString());
        sb.append("] ");
        boolean isInvalid = this.storage.isInvalid();
        StoredFileHelper storedFileHelper = this.storage;
        sb.append(isInvalid ? storedFileHelper.getName() : storedFileHelper.getUri());
        return sb.toString();
    }
}
