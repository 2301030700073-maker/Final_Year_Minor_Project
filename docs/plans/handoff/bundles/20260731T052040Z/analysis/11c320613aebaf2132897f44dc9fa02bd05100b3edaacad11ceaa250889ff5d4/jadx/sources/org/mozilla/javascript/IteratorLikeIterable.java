package org.mozilla.javascript;

import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.io.Closeable;
import java.util.Iterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class IteratorLikeIterable implements Iterable<Object>, Closeable {
    private boolean closed;
    private final Context cx;
    private final Scriptable iterator;
    private final Callable next;
    private final Callable returnFunc;
    private final Scriptable scope;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Itr implements Iterator<Object> {
        private boolean isDone;
        private Object nextVal;

        public Itr() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.isDone) {
                return false;
            }
            Object call = IteratorLikeIterable.this.next.call(IteratorLikeIterable.this.cx, IteratorLikeIterable.this.scope, IteratorLikeIterable.this.iterator, ScriptRuntime.emptyArgs);
            Object property = ScriptableObject.getProperty(ScriptableObject.ensureScriptable(call), ES6Iterator.DONE_PROPERTY);
            if (property == Scriptable.NOT_FOUND) {
                property = Undefined.instance;
            }
            if (ScriptRuntime.toBoolean(property)) {
                this.isDone = true;
                return false;
            }
            this.nextVal = ScriptRuntime.getObjectPropNoWarn(call, ES6Iterator.VALUE_PROPERTY, IteratorLikeIterable.this.cx, IteratorLikeIterable.this.scope);
            return true;
        }

        public boolean isDone() {
            return this.isDone;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!this.isDone) {
                return this.nextVal;
            }
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
            return null;
        }

        public void setDone(boolean z) {
            this.isDone = z;
        }
    }

    public IteratorLikeIterable(Context context, Scriptable scriptable, Object obj) {
        this.cx = context;
        this.scope = scriptable;
        this.next = ScriptRuntime.getPropFunctionAndThis(obj, ES6Iterator.NEXT_METHOD, context, scriptable);
        this.iterator = ScriptRuntime.lastStoredScriptable(context);
        Object objectPropNoWarn = ScriptRuntime.getObjectPropNoWarn(obj, "return", context, scriptable);
        if (objectPropNoWarn == null || Undefined.isUndefined(objectPropNoWarn)) {
            this.returnFunc = null;
        } else {
            if (!(objectPropNoWarn instanceof Callable)) {
                throw ScriptRuntime.notFunctionError(obj, objectPropNoWarn, "return");
            }
            this.returnFunc = (Callable) objectPropNoWarn;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            return;
        }
        this.closed = true;
        Callable callable = this.returnFunc;
        if (callable != null) {
            callable.call(this.cx, this.scope, this.iterator, ScriptRuntime.emptyArgs);
        }
    }

    @Override // java.lang.Iterable
    public Iterator<Object> iterator() {
        return new Itr();
    }
}
