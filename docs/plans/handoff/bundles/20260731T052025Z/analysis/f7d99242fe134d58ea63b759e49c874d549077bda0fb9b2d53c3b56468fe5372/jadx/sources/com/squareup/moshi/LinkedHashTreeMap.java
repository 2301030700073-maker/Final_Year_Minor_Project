package com.squareup.moshi;

import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.collection.CircularArray;
import androidx.viewpager.widget.ViewPager;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LinkedHashTreeMap extends AbstractMap implements Serializable {
    public static final ViewPager.AnonymousClass1 NATURAL_ORDER = new ViewPager.AnonymousClass1(20);
    public KeySet entrySet;
    public KeySet keySet;
    public int size = 0;
    public int modCount = 0;
    public final Comparator comparator = NATURAL_ORDER;
    public final Node header = new Node();
    public Node[] table = new Node[16];
    public int threshold = 12;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class KeySet extends AbstractSet {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ LinkedHashTreeMap this$0;

        public /* synthetic */ KeySet(LinkedHashTreeMap linkedHashTreeMap, int i) {
            this.$r8$classId = i;
            this.this$0 = linkedHashTreeMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            int i = this.$r8$classId;
            LinkedHashTreeMap linkedHashTreeMap = this.this$0;
            switch (i) {
                case 0:
                    linkedHashTreeMap.clear();
                    break;
                default:
                    linkedHashTreeMap.clear();
                    break;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0030 A[ORIG_RETURN, RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean contains(java.lang.Object r4) {
            /*
                r3 = this;
                int r0 = r3.$r8$classId
                com.squareup.moshi.LinkedHashTreeMap r3 = r3.this$0
                switch(r0) {
                    case 0: goto L32;
                    default: goto L7;
                }
            L7:
                boolean r0 = r4 instanceof java.util.Map.Entry
                r1 = 0
                if (r0 == 0) goto L31
                java.util.Map$Entry r4 = (java.util.Map.Entry) r4
                java.lang.Object r0 = r4.getKey()
                r2 = 0
                if (r0 == 0) goto L1a
                com.squareup.moshi.LinkedHashTreeMap$Node r3 = r3.find(r0, r1)     // Catch: java.lang.ClassCastException -> L1a
                goto L1b
            L1a:
                r3 = r2
            L1b:
                if (r3 == 0) goto L2e
                java.lang.Object r0 = r3.value
                java.lang.Object r4 = r4.getValue()
                if (r0 == r4) goto L2d
                if (r0 == 0) goto L2e
                boolean r4 = r0.equals(r4)
                if (r4 == 0) goto L2e
            L2d:
                r2 = r3
            L2e:
                if (r2 == 0) goto L31
                r1 = 1
            L31:
                return r1
            L32:
                boolean r3 = r3.containsKey(r4)
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.moshi.LinkedHashTreeMap.KeySet.contains(java.lang.Object):boolean");
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            int i = this.$r8$classId;
            LinkedHashTreeMap linkedHashTreeMap = this.this$0;
            switch (i) {
                case 0:
                    return new Iterator(linkedHashTreeMap, 0) { // from class: com.squareup.moshi.LinkedHashTreeMap.KeySet.1
                        public final /* synthetic */ int $r8$classId;
                        public int expectedModCount;
                        public Node lastReturned = null;
                        public Node next;
                        public final /* synthetic */ LinkedHashTreeMap this$0;

                        {
                            this.$r8$classId = r2;
                            this.this$0 = linkedHashTreeMap;
                            this.next = linkedHashTreeMap.header.next;
                            this.expectedModCount = linkedHashTreeMap.modCount;
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
                                    return next$com$squareup$moshi$LinkedHashTreeMap$LinkedTreeMapIterator();
                            }
                        }

                        public final Object next$com$squareup$moshi$LinkedHashTreeMap$LinkedTreeMapIterator() {
                            return nextNode();
                        }

                        public final Node nextNode() {
                            Node node = this.next;
                            LinkedHashTreeMap linkedHashTreeMap2 = this.this$0;
                            if (node == linkedHashTreeMap2.header) {
                                Regex$$ExternalSyntheticBUOutline0.m990m();
                                return null;
                            }
                            if (linkedHashTreeMap2.modCount != this.expectedModCount) {
                                StreamSharing$$ExternalSyntheticLambda0.m();
                                return null;
                            }
                            this.next = node.next;
                            this.lastReturned = node;
                            return node;
                        }

                        @Override // java.util.Iterator
                        public final void remove() {
                            Node node = this.lastReturned;
                            if (node == null) {
                                throw new IllegalStateException();
                            }
                            LinkedHashTreeMap linkedHashTreeMap2 = this.this$0;
                            linkedHashTreeMap2.removeInternal(node, true);
                            this.lastReturned = null;
                            this.expectedModCount = linkedHashTreeMap2.modCount;
                        }
                    };
                default:
                    return new Iterator(linkedHashTreeMap, 1) { // from class: com.squareup.moshi.LinkedHashTreeMap.KeySet.1
                        public final /* synthetic */ int $r8$classId;
                        public int expectedModCount;
                        public Node lastReturned = null;
                        public Node next;
                        public final /* synthetic */ LinkedHashTreeMap this$0;

                        {
                            this.$r8$classId = r2;
                            this.this$0 = linkedHashTreeMap;
                            this.next = linkedHashTreeMap.header.next;
                            this.expectedModCount = linkedHashTreeMap.modCount;
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
                                    return next$com$squareup$moshi$LinkedHashTreeMap$LinkedTreeMapIterator();
                            }
                        }

                        public final Object next$com$squareup$moshi$LinkedHashTreeMap$LinkedTreeMapIterator() {
                            return nextNode();
                        }

                        public final Node nextNode() {
                            Node node = this.next;
                            LinkedHashTreeMap linkedHashTreeMap2 = this.this$0;
                            if (node == linkedHashTreeMap2.header) {
                                Regex$$ExternalSyntheticBUOutline0.m990m();
                                return null;
                            }
                            if (linkedHashTreeMap2.modCount != this.expectedModCount) {
                                StreamSharing$$ExternalSyntheticLambda0.m();
                                return null;
                            }
                            this.next = node.next;
                            this.lastReturned = node;
                            return node;
                        }

                        @Override // java.util.Iterator
                        public final void remove() {
                            Node node = this.lastReturned;
                            if (node == null) {
                                throw new IllegalStateException();
                            }
                            LinkedHashTreeMap linkedHashTreeMap2 = this.this$0;
                            linkedHashTreeMap2.removeInternal(node, true);
                            this.lastReturned = null;
                            this.expectedModCount = linkedHashTreeMap2.modCount;
                        }
                    };
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0033  */
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
                com.squareup.moshi.LinkedHashTreeMap r5 = r5.this$0
                r3 = 1
                switch(r0) {
                    case 0: goto L38;
                    default: goto La;
                }
            La:
                boolean r0 = r6 instanceof java.util.Map.Entry
                if (r0 != 0) goto Lf
                goto L37
            Lf:
                java.util.Map$Entry r6 = (java.util.Map.Entry) r6
                java.lang.Object r0 = r6.getKey()
                if (r0 == 0) goto L1c
                com.squareup.moshi.LinkedHashTreeMap$Node r0 = r5.find(r0, r2)     // Catch: java.lang.ClassCastException -> L1c
                goto L1d
            L1c:
                r0 = r1
            L1d:
                if (r0 == 0) goto L30
                java.lang.Object r4 = r0.value
                java.lang.Object r6 = r6.getValue()
                if (r4 == r6) goto L2f
                if (r4 == 0) goto L30
                boolean r6 = r4.equals(r6)
                if (r6 == 0) goto L30
            L2f:
                r1 = r0
            L30:
                if (r1 != 0) goto L33
                goto L37
            L33:
                r5.removeInternal(r1, r3)
                r2 = r3
            L37:
                return r2
            L38:
                if (r6 == 0) goto L3e
                com.squareup.moshi.LinkedHashTreeMap$Node r1 = r5.find(r6, r2)     // Catch: java.lang.ClassCastException -> L3e
            L3e:
                if (r1 == 0) goto L43
                r5.removeInternal(r1, r3)
            L43:
                if (r1 == 0) goto L46
                r2 = r3
            L46:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.moshi.LinkedHashTreeMap.KeySet.remove(java.lang.Object):boolean");
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            int i = this.$r8$classId;
            LinkedHashTreeMap linkedHashTreeMap = this.this$0;
            switch (i) {
            }
            return linkedHashTreeMap.size;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        Arrays.fill(this.table, (Object) null);
        this.size = 0;
        this.modCount++;
        Node node = this.header;
        Node node2 = node.next;
        while (node2 != node) {
            Node node3 = node2.next;
            node2.prev = null;
            node2.next = null;
            node2 = node3;
        }
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
        boolean z2;
        Node node2;
        Node node3;
        Node node4;
        Node node5;
        Node node6;
        Node[] nodeArr = this.table;
        int hashCode = obj.hashCode();
        int i2 = hashCode ^ ((hashCode >>> 20) ^ (hashCode >>> 12));
        int i3 = ((i2 >>> 7) ^ i2) ^ (i2 >>> 4);
        boolean z3 = true;
        int length = i3 & (nodeArr.length - 1);
        Node node7 = nodeArr[length];
        ViewPager.AnonymousClass1 anonymousClass1 = NATURAL_ORDER;
        Node node8 = null;
        Comparator comparator = this.comparator;
        if (node7 != null) {
            Comparable comparable = comparator == anonymousClass1 ? (Comparable) obj : null;
            while (true) {
                Object obj2 = node7.key;
                i = comparable != null ? comparable.compareTo(obj2) : comparator.compare(obj, obj2);
                if (i == 0) {
                    return node7;
                }
                Node node9 = i < 0 ? node7.left : node7.right;
                if (node9 == null) {
                    break;
                }
                node7 = node9;
            }
        } else {
            i = 0;
        }
        if (!z) {
            return null;
        }
        Node node10 = this.header;
        if (node7 != null) {
            Node node11 = node7;
            node = new Node(node11, obj, i3, node10, node10.prev);
            if (i < 0) {
                node11.left = node;
            } else {
                node11.right = node;
            }
            rebalance(node11, true);
        } else {
            if (comparator == anonymousClass1 && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            node = new Node(node7, obj, i3, node10, node10.prev);
            nodeArr[length] = node;
        }
        int i4 = this.size;
        this.size = i4 + 1;
        if (i4 > this.threshold) {
            Node[] nodeArr2 = this.table;
            int length2 = nodeArr2.length;
            int i5 = length2 * 2;
            Node[] nodeArr3 = new Node[i5];
            int i6 = 8;
            CircularArray circularArray = new CircularArray(i6);
            CircularArray circularArray2 = new CircularArray(i6);
            int i7 = 0;
            while (i7 < length2) {
                Node node12 = nodeArr2[i7];
                if (node12 == null) {
                    z2 = z3;
                    node3 = node8;
                } else {
                    Node node13 = node8;
                    for (Node node14 = node12; node14 != null; node14 = node14.left) {
                        node14.parent = node13;
                        node13 = node14;
                    }
                    int i8 = 0;
                    int i9 = 0;
                    while (true) {
                        if (node13 != null) {
                            z2 = z3;
                            Node node15 = node13.parent;
                            node13.parent = node8;
                            Node node16 = node13.right;
                            while (true) {
                                Node node17 = node16;
                                node2 = node15;
                                node15 = node17;
                                if (node15 == null) {
                                    break;
                                }
                                node15.parent = node2;
                                node16 = node15.left;
                            }
                        } else {
                            Node node18 = node13;
                            node13 = node8;
                            node2 = node18;
                            z2 = z3;
                        }
                        if (node13 == null) {
                            break;
                        }
                        if ((node13.hash & length2) == 0) {
                            i8++;
                        } else {
                            i9++;
                        }
                        node13 = node2;
                        z3 = z2;
                        node8 = null;
                    }
                    circularArray.head = ((Integer.highestOneBit(i8) * 2) - 1) - i8;
                    circularArray.capacityBitmask = 0;
                    circularArray.tail = 0;
                    node3 = null;
                    circularArray.elements = null;
                    circularArray2.head = ((Integer.highestOneBit(i9) * 2) - 1) - i9;
                    circularArray2.capacityBitmask = 0;
                    circularArray2.tail = 0;
                    circularArray2.elements = null;
                    Node node19 = null;
                    while (node12 != null) {
                        node12.parent = node19;
                        Node node20 = node12;
                        node12 = node12.left;
                        node19 = node20;
                    }
                    while (true) {
                        if (node19 != null) {
                            Node node21 = node19.parent;
                            node19.parent = null;
                            Node node22 = node19.right;
                            while (true) {
                                Node node23 = node22;
                                node4 = node21;
                                node21 = node23;
                                if (node21 == null) {
                                    break;
                                }
                                node21.parent = node4;
                                node22 = node21.left;
                            }
                        } else {
                            node4 = node19;
                            node19 = null;
                        }
                        if (node19 == null) {
                            break;
                        }
                        if ((node19.hash & length2) == 0) {
                            circularArray.add(node19);
                        } else {
                            circularArray2.add(node19);
                        }
                        node19 = node4;
                    }
                    if (i8 > 0) {
                        node5 = (Node) circularArray.elements;
                        if (node5.parent != null) {
                            throw new IllegalStateException();
                        }
                    } else {
                        node5 = null;
                    }
                    nodeArr3[i7] = node5;
                    int i10 = i7 + length2;
                    if (i9 > 0) {
                        node6 = (Node) circularArray2.elements;
                        if (node6.parent != null) {
                            throw new IllegalStateException();
                        }
                    } else {
                        node6 = null;
                    }
                    nodeArr3[i10] = node6;
                }
                i7++;
                node8 = node3;
                z3 = z2;
            }
            this.table = nodeArr3;
            this.threshold = (i5 / 4) + (i5 / 2);
        }
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
            com.squareup.moshi.LinkedHashTreeMap$Node r2 = r2.find(r3, r1)     // Catch: java.lang.ClassCastException -> L9
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
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.moshi.LinkedHashTreeMap.get(java.lang.Object):java.lang.Object");
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
            Regex$$ExternalSyntheticBUOutline0.m("key == null");
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
                if (i4 != -1 && (i4 != 0 || z)) {
                    rotateRight(node3);
                }
                rotateLeft(node);
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                Node node6 = node2.left;
                Node node7 = node2.right;
                int i5 = (node6 != null ? node6.height : 0) - (node7 != null ? node7.height : 0);
                if (i5 != 1 && (i5 != 0 || z)) {
                    rotateLeft(node2);
                }
                rotateRight(node);
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
            com.squareup.moshi.LinkedHashTreeMap$Node r3 = r2.find(r3, r1)     // Catch: java.lang.ClassCastException -> L9
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
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.moshi.LinkedHashTreeMap.remove(java.lang.Object):java.lang.Object");
    }

    public final void removeInternal(Node node, boolean z) {
        Node node2;
        Node node3;
        int i;
        if (z) {
            Node node4 = node.prev;
            node4.next = node.next;
            node.next.prev = node4;
            node.prev = null;
            node.next = null;
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
            int i = node.hash;
            this.table[i & (r2.length - 1)] = node2;
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Node implements Map.Entry {
        public final int hash;
        public int height;
        public final Object key;
        public Node left;
        public Node next;
        public Node parent;
        public Node prev;
        public Node right;
        public Object value;

        public Node(Node node, Object obj, int i, Node node2, Node node3) {
            this.parent = node;
            this.key = obj;
            this.hash = i;
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
            Object obj2 = this.value;
            this.value = obj;
            return obj2;
        }

        public final String toString() {
            return this.key + "=" + this.value;
        }

        public Node() {
            this.key = null;
            this.hash = -1;
            this.prev = this;
            this.next = this;
        }
    }
}
