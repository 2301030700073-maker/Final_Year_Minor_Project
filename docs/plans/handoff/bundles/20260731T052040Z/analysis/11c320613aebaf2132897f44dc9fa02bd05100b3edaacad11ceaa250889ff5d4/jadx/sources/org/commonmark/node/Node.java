package org.commonmark.node;

import android.content.Context;
import androidx.core.os.ExecutorCompat$HandlerExecutor;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import java.util.LinkedHashSet;
import kotlin.collections.CollectionsKt;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Node {
    public final /* synthetic */ int $r8$classId;
    public Object firstChild;
    public Object lastChild;
    public Object next;
    public Object parent;
    public Object prev;

    public Node(Context context, Dispatcher dispatcher) {
        this.$r8$classId = 1;
        this.parent = dispatcher;
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        this.firstChild = applicationContext;
        this.lastChild = new Object();
        this.prev = new LinkedHashSet();
    }

    public abstract void accept(Dispatcher dispatcher);

    public void appendChild(Node node) {
        node.unlink();
        node.setParent(this);
        Node node2 = (Node) this.lastChild;
        if (node2 == null) {
            this.firstChild = node;
            this.lastChild = node;
        } else {
            node2.next = node;
            node.prev = node2;
            this.lastChild = node;
        }
    }

    public Node getParent() {
        return (Node) this.parent;
    }

    public abstract Object readSystemState();

    public void setParent(Node node) {
        this.parent = node;
    }

    public void setState(Object obj) {
        synchronized (this.lastChild) {
            Object obj2 = this.next;
            if (obj2 == null || !obj2.equals(obj)) {
                this.next = obj;
                ((ExecutorCompat$HandlerExecutor) ((Dispatcher) this.parent).runningSyncCalls).execute(new Processor$$ExternalSyntheticLambda2(CollectionsKt.toList((LinkedHashSet) this.prev), this, 8));
            }
        }
    }

    public abstract void startTracking();

    public abstract void stopTracking();

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return getClass().getSimpleName() + "{" + toStringAttributes() + "}";
            default:
                return super.toString();
        }
    }

    public String toStringAttributes() {
        return "";
    }

    public void unlink() {
        Node node = (Node) this.prev;
        if (node != null) {
            node.next = (Node) this.next;
        } else {
            Node node2 = (Node) this.parent;
            if (node2 != null) {
                node2.firstChild = (Node) this.next;
            }
        }
        Node node3 = (Node) this.next;
        if (node3 != null) {
            node3.prev = node;
        } else {
            Node node4 = (Node) this.parent;
            if (node4 != null) {
                node4.lastChild = node;
            }
        }
        this.parent = null;
        this.next = null;
        this.prev = null;
    }

    public Node() {
        this.$r8$classId = 0;
        this.parent = null;
        this.firstChild = null;
        this.lastChild = null;
        this.prev = null;
        this.next = null;
    }
}
