package com.google.gson.internal;

import androidx.recyclerview.widget.DiffUtil;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LinkedTreeMap extends AbstractMap implements Serializable {
    public static final DiffUtil.AnonymousClass1 NATURAL_ORDER = new DiffUtil.AnonymousClass1(13);
    public final boolean allowNullValues;
    public KeySet entrySet;
    public final Node header;
    public KeySet keySet;
    public Node root;
    public int size = 0;
    public int modCount = 0;
    public final Comparator comparator = NATURAL_ORDER;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class KeySet extends AbstractSet {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ LinkedTreeMap this$0;

        public /* synthetic */ KeySet(LinkedTreeMap linkedTreeMap, int i) {
            this.$r8$classId = i;
            this.this$0 = linkedTreeMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            int i = this.$r8$classId;
            LinkedTreeMap linkedTreeMap = this.this$0;
            switch (i) {
                case 0:
                    linkedTreeMap.clear();
                    break;
                default:
                    linkedTreeMap.clear();
                    break;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x002c A[ORIG_RETURN, RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean contains(java.lang.Object r4) {
            /*
                r3 = this;
                int r0 = r3.$r8$classId
                com.google.gson.internal.LinkedTreeMap r3 = r3.this$0
                switch(r0) {
                    case 0: goto L2e;
                    default: goto L7;
                }
            L7:
                boolean r0 = r4 instanceof java.util.Map.Entry
                r1 = 0
                if (r0 == 0) goto L2d
                java.util.Map$Entry r4 = (java.util.Map.Entry) r4
                java.lang.Object r0 = r4.getKey()
                r2 = 0
                if (r0 == 0) goto L1a
                com.google.gson.internal.LinkedTreeMap$Node r3 = r3.find(r0, r1)     // Catch: java.lang.ClassCastException -> L1a
                goto L1b
            L1a:
                r3 = r2
            L1b:
                if (r3 == 0) goto L2a
                java.lang.Object r0 = r3.value
                java.lang.Object r4 = r4.getValue()
                boolean r4 = j$.util.Objects.equals(r0, r4)
                if (r4 == 0) goto L2a
                r2 = r3
            L2a:
                if (r2 == 0) goto L2d
                r1 = 1
            L2d:
                return r1
            L2e:
                boolean r3 = r3.containsKey(r4)
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.LinkedTreeMap.KeySet.contains(java.lang.Object):boolean");
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            int i = this.$r8$classId;
            LinkedTreeMap linkedTreeMap = this.this$0;
            switch (i) {
                case 0:
                    return new Iterator(linkedTreeMap, 0) { // from class: com.google.gson.internal.LinkedTreeMap.KeySet.1
                        public final /* synthetic */ int $r8$classId;
                        public int expectedModCount;
                        public Node lastReturned = null;
                        public Node next;
                        public final /* synthetic */ LinkedTreeMap this$0;

                        {
                            this.$r8$classId = r2;
                            this.this$0 = linkedTreeMap;
                            this.next = linkedTreeMap.header.next;
                            this.expectedModCount = linkedTreeMap.modCount;
                        }

                        @Override // java.util.Iterator
                        public final boolean hasNext() {
                            return this.next != this.this$0.header;
                        }

                        @Override // java.util.Iterator
                        public Object next() {
                            switch (this.$r8$classId) {
                                case 0:
                                    return nextNode().key;
                                default:
                                    return next$com$google$gson$internal$LinkedTreeMap$LinkedTreeMapIterator();
                            }
                        }

                        public final Object next$com$google$gson$internal$LinkedTreeMap$LinkedTreeMapIterator() {
                            return nextNode();
                        }

                        public final Node nextNode() {
                            Node node = this.next;
                            LinkedTreeMap linkedTreeMap2 = this.this$0;
                            if (node == linkedTreeMap2.header) {
                                Utils$$ExternalSyntheticBUOutline0.m();
                                return null;
                            }
                            if (linkedTreeMap2.modCount != this.expectedModCount) {
                                throw new ConcurrentModificationException();
                            }
                            this.next = node.next;
                            this.lastReturned = node;
                            return node;
                        }

                        @Override // java.util.Iterator
                        public final void remove() {
                            Node node = this.lastReturned;
                            if (node == null) {
                                Gson$$ExternalSyntheticBUOutline0.m();
                                return;
                            }
                            LinkedTreeMap linkedTreeMap2 = this.this$0;
                            linkedTreeMap2.removeInternal(node, true);
                            this.lastReturned = null;
                            this.expectedModCount = linkedTreeMap2.modCount;
                        }
                    };
                default:
                    return new Iterator(linkedTreeMap, 1) { // from class: com.google.gson.internal.LinkedTreeMap.KeySet.1
                        public final /* synthetic */ int $r8$classId;
                        public int expectedModCount;
                        public Node lastReturned = null;
                        public Node next;
                        public final /* synthetic */ LinkedTreeMap this$0;

                        {
                            this.$r8$classId = r2;
                            this.this$0 = linkedTreeMap;
                            this.next = linkedTreeMap.header.next;
                            this.expectedModCount = linkedTreeMap.modCount;
                        }

                        @Override // java.util.Iterator
                        public final boolean hasNext() {
                            return this.next != this.this$0.header;
                        }

                        @Override // java.util.Iterator
                        public Object next() {
                            switch (this.$r8$classId) {
                                case 0:
                                    return nextNode().key;
                                default:
                                    return next$com$google$gson$internal$LinkedTreeMap$LinkedTreeMapIterator();
                            }
                        }

                        public final Object next$com$google$gson$internal$LinkedTreeMap$LinkedTreeMapIterator() {
                            return nextNode();
                        }

                        public final Node nextNode() {
                            Node node = this.next;
                            LinkedTreeMap linkedTreeMap2 = this.this$0;
                            if (node == linkedTreeMap2.header) {
                                Utils$$ExternalSyntheticBUOutline0.m();
                                return null;
                            }
                            if (linkedTreeMap2.modCount != this.expectedModCount) {
                                throw new ConcurrentModificationException();
                            }
                            this.next = node.next;
                            this.lastReturned = node;
                            return node;
                        }

                        @Override // java.util.Iterator
                        public final void remove() {
                            Node node = this.lastReturned;
                            if (node == null) {
                                Gson$$ExternalSyntheticBUOutline0.m();
                                return;
                            }
                            LinkedTreeMap linkedTreeMap2 = this.this$0;
                            linkedTreeMap2.removeInternal(node, true);
                            this.lastReturned = null;
                            this.expectedModCount = linkedTreeMap2.modCount;
                        }
                    };
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x002f  */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean remove(java.lang.Object r6) {
            /*
                r5 = this;
                int r0 = r5.$r8$classId
                r1 = 0
                r2 = 0
                com.google.gson.internal.LinkedTreeMap r5 = r5.this$0
                r3 = 1
                switch(r0) {
                    case 0: goto L34;
                    default: goto La;
                }
            La:
                boolean r0 = r6 instanceof java.util.Map.Entry
                if (r0 != 0) goto Lf
                goto L33
            Lf:
                java.util.Map$Entry r6 = (java.util.Map.Entry) r6
                java.lang.Object r0 = r6.getKey()
                if (r0 == 0) goto L1c
                com.google.gson.internal.LinkedTreeMap$Node r0 = r5.find(r0, r2)     // Catch: java.lang.ClassCastException -> L1c
                goto L1d
            L1c:
                r0 = r1
            L1d:
                if (r0 == 0) goto L2c
                java.lang.Object r4 = r0.value
                java.lang.Object r6 = r6.getValue()
                boolean r6 = j$.util.Objects.equals(r4, r6)
                if (r6 == 0) goto L2c
                r1 = r0
            L2c:
                if (r1 != 0) goto L2f
                goto L33
            L2f:
                r5.removeInternal(r1, r3)
                r2 = r3
            L33:
                return r2
            L34:
                if (r6 == 0) goto L3a
                com.google.gson.internal.LinkedTreeMap$Node r1 = r5.find(r6, r2)     // Catch: java.lang.ClassCastException -> L3a
            L3a:
                if (r1 == 0) goto L3f
                r5.removeInternal(r1, r3)
            L3f:
                if (r1 == 0) goto L42
                r2 = r3
            L42:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.LinkedTreeMap.KeySet.remove(java.lang.Object):boolean");
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            int i = this.$r8$classId;
            LinkedTreeMap linkedTreeMap = this.this$0;
            switch (i) {
            }
            return linkedTreeMap.size;
        }
    }

    public LinkedTreeMap(boolean z) {
        this.allowNullValues = z;
        this.header = new Node(z);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.root = null;
        this.size = 0;
        this.modCount++;
        Node node = this.header;
        node.prev = node;
        node.next = node;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Node node = null;
        if (obj != null) {
            try {
                node = find(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return node != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        KeySet keySet = this.entrySet;
        if (keySet != null) {
            return keySet;
        }
        KeySet keySet2 = new KeySet(this, 1);
        this.entrySet = keySet2;
        return keySet2;
    }

    public final Node find(Object obj, boolean z) {
        int i;
        Node node;
        Node node2 = this.root;
        DiffUtil.AnonymousClass1 anonymousClass1 = NATURAL_ORDER;
        Comparator comparator = this.comparator;
        if (node2 != null) {
            Comparable comparable = comparator == anonymousClass1 ? (Comparable) obj : null;
            while (true) {
                Object obj2 = node2.key;
                i = comparable != null ? comparable.compareTo(obj2) : comparator.compare(obj, obj2);
                if (i == 0) {
                    return node2;
                }
                Node node3 = i < 0 ? node2.left : node2.right;
                if (node3 == null) {
                    break;
                }
                node2 = node3;
            }
        } else {
            i = 0;
        }
        Node node4 = node2;
        if (!z) {
            return null;
        }
        Node node5 = this.header;
        if (node4 != null) {
            node = new Node(this.allowNullValues, node4, obj, node5, node5.prev);
            if (i < 0) {
                node4.left = node;
            } else {
                node4.right = node;
            }
            rebalance(node4, true);
        } else {
            if (comparator == anonymousClass1 && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            node = new Node(this.allowNullValues, node4, obj, node5, node5.prev);
            this.root = node;
        }
        this.size++;
        this.modCount++;
        return node;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x000f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000c  */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(java.lang.Object r3) {
        /*
            r2 = this;
            r0 = 0
            if (r3 == 0) goto L9
            r1 = 0
            com.google.gson.internal.LinkedTreeMap$Node r2 = r2.find(r3, r1)     // Catch: java.lang.ClassCastException -> L9
            goto La
        L9:
            r2 = r0
        La:
            if (r2 == 0) goto Lf
            java.lang.Object r2 = r2.value
            return r2
        Lf:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.LinkedTreeMap.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        KeySet keySet = this.keySet;
        if (keySet != null) {
            return keySet;
        }
        KeySet keySet2 = new KeySet(this, 0);
        this.keySet = keySet2;
        return keySet2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("key == null");
            return null;
        }
        if (obj2 == null && !this.allowNullValues) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("value == null");
            return null;
        }
        Node find = find(obj, true);
        Object obj3 = find.value;
        find.value = obj2;
        return obj3;
    }

    public final void rebalance(Node node, boolean z) {
        while (node != null) {
            Node node2 = node.left;
            Node node3 = node.right;
            int i = node2 != null ? node2.height : 0;
            int i2 = node3 != null ? node3.height : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                Node node4 = node3.left;
                Node node5 = node3.right;
                int i4 = (node4 != null ? node4.height : 0) - (node5 != null ? node5.height : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    rotateLeft(node);
                } else {
                    rotateRight(node3);
                    rotateLeft(node);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                Node node6 = node2.left;
                Node node7 = node2.right;
                int i5 = (node6 != null ? node6.height : 0) - (node7 != null ? node7.height : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    rotateRight(node);
                } else {
                    rotateLeft(node2);
                    rotateRight(node);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                node.height = i + 1;
                if (z) {
                    return;
                }
            } else {
                node.height = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            node = node.parent;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0012  */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object remove(java.lang.Object r3) {
        /*
            r2 = this;
            r0 = 0
            if (r3 == 0) goto L9
            r1 = 0
            com.google.gson.internal.LinkedTreeMap$Node r3 = r2.find(r3, r1)     // Catch: java.lang.ClassCastException -> L9
            goto La
        L9:
            r3 = r0
        La:
            if (r3 == 0) goto L10
            r1 = 1
            r2.removeInternal(r3, r1)
        L10:
            if (r3 == 0) goto L15
            java.lang.Object r2 = r3.value
            return r2
        L15:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.LinkedTreeMap.remove(java.lang.Object):java.lang.Object");
    }

    public final void removeInternal(Node node, boolean z) {
        Node node2;
        Node node3;
        int i;
        if (z) {
            Node node4 = node.prev;
            node4.next = node.next;
            node.next.prev = node4;
        }
        Node node5 = node.left;
        Node node6 = node.right;
        Node node7 = node.parent;
        int i2 = 0;
        if (node5 == null || node6 == null) {
            if (node5 != null) {
                replaceInParent(node, node5);
                node.left = null;
            } else if (node6 != null) {
                replaceInParent(node, node6);
                node.right = null;
            } else {
                replaceInParent(node, null);
            }
            rebalance(node7, false);
            this.size--;
            this.modCount++;
            return;
        }
        if (node5.height > node6.height) {
            Node node8 = node5.right;
            while (true) {
                Node node9 = node8;
                node3 = node5;
                node5 = node9;
                if (node5 == null) {
                    break;
                } else {
                    node8 = node5.right;
                }
            }
        } else {
            Node node10 = node6.left;
            while (true) {
                node2 = node6;
                node6 = node10;
                if (node6 == null) {
                    break;
                } else {
                    node10 = node6.left;
                }
            }
            node3 = node2;
        }
        removeInternal(node3, false);
        Node node11 = node.left;
        if (node11 != null) {
            i = node11.height;
            node3.left = node11;
            node11.parent = node3;
            node.left = null;
        } else {
            i = 0;
        }
        Node node12 = node.right;
        if (node12 != null) {
            i2 = node12.height;
            node3.right = node12;
            node12.parent = node3;
            node.right = null;
        }
        node3.height = Math.max(i, i2) + 1;
        replaceInParent(node, node3);
    }

    public final void replaceInParent(Node node, Node node2) {
        Node node3 = node.parent;
        node.parent = null;
        if (node2 != null) {
            node2.parent = node3;
        }
        if (node3 == null) {
            this.root = node2;
        } else if (node3.left == node) {
            node3.left = node2;
        } else {
            node3.right = node2;
        }
    }

    public final void rotateLeft(Node node) {
        Node node2 = node.left;
        Node node3 = node.right;
        Node node4 = node3.left;
        Node node5 = node3.right;
        node.right = node4;
        if (node4 != null) {
            node4.parent = node;
        }
        replaceInParent(node, node3);
        node3.left = node;
        node.parent = node3;
        int max = Math.max(node2 != null ? node2.height : 0, node4 != null ? node4.height : 0) + 1;
        node.height = max;
        node3.height = Math.max(max, node5 != null ? node5.height : 0) + 1;
    }

    public final void rotateRight(Node node) {
        Node node2 = node.left;
        Node node3 = node.right;
        Node node4 = node2.left;
        Node node5 = node2.right;
        node.left = node5;
        if (node5 != null) {
            node5.parent = node;
        }
        replaceInParent(node, node2);
        node2.right = node;
        node.parent = node2;
        int max = Math.max(node3 != null ? node3.height : 0, node5 != null ? node5.height : 0) + 1;
        node.height = max;
        node2.height = Math.max(max, node4 != null ? node4.height : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.size;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Node implements Map.Entry {
        public final boolean allowNullValue;
        public int height;
        public final Object key;
        public Node left;
        public Node next;
        public Node parent;
        public Node prev;
        public Node right;
        public Object value;

        public Node(boolean z, Node node, Object obj, Node node2, Node node3) {
            this.parent = node;
            this.key = obj;
            this.allowNullValue = z;
            this.height = 1;
            this.next = node2;
            this.prev = node3;
            node3.next = this;
            node2.prev = this;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object obj2 = this.key;
                if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                    Object obj3 = this.value;
                    if (obj3 == null) {
                        if (entry.getValue() == null) {
                            return true;
                        }
                    } else if (obj3.equals(entry.getValue())) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.key;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.value;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            Object obj = this.key;
            int hashCode = obj == null ? 0 : obj.hashCode();
            Object obj2 = this.value;
            return hashCode ^ (obj2 != null ? obj2.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            if (obj == null && !this.allowNullValue) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("value == null");
                return null;
            }
            Object obj2 = this.value;
            this.value = obj;
            return obj2;
        }

        public final String toString() {
            return this.key + "=" + this.value;
        }

        public Node(boolean z) {
            this.key = null;
            this.allowNullValue = z;
            this.prev = this;
            this.next = this;
        }
    }
}
