package kotlin.io;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.io.File;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.AbstractIterator;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt$minus$3$$ExternalSyntheticLambda0;
import kotlin.sequences.SubSequence$iterator$1;
import kotlin.sequences.TransformingSequence;
import kotlin.text.DelimitedRangesSequence$iterator$1;
import org.wikipedia.feed.random.RandomClient$getRandomPages$$inlined$sortedBy$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FileTreeWalk implements Sequence {
    public final /* synthetic */ int $r8$classId;
    public final Object direction;
    public final Object start;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class DirectoryState extends WalkState {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FileTreeWalkIterator extends AbstractIterator {
        public final ArrayDeque state;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class BottomUpDirectoryState extends DirectoryState {
            public boolean failed;
            public int fileIndex;
            public File[] fileList;
            public boolean rootVisited;

            @Override // kotlin.io.FileTreeWalk.WalkState
            public final File step() {
                boolean z = this.failed;
                File file = this.root;
                if (!z && this.fileList == null) {
                    File[] listFiles = file.listFiles();
                    this.fileList = listFiles;
                    if (listFiles == null) {
                        this.failed = true;
                    }
                }
                File[] fileArr = this.fileList;
                if (fileArr == null || this.fileIndex >= fileArr.length) {
                    if (this.rootVisited) {
                        return null;
                    }
                    this.rootVisited = true;
                    return file;
                }
                fileArr.getClass();
                int i = this.fileIndex;
                this.fileIndex = i + 1;
                return fileArr[i];
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class SingleFileState extends WalkState {
            public boolean visited;

            @Override // kotlin.io.FileTreeWalk.WalkState
            public final File step() {
                if (this.visited) {
                    return null;
                }
                this.visited = true;
                return this.root;
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class TopDownDirectoryState extends DirectoryState {
            public int fileIndex;
            public File[] fileList;
            public boolean rootVisited;

            @Override // kotlin.io.FileTreeWalk.WalkState
            public final File step() {
                boolean z = this.rootVisited;
                File file = this.root;
                if (!z) {
                    this.rootVisited = true;
                    return file;
                }
                File[] fileArr = this.fileList;
                if (fileArr != null && this.fileIndex >= fileArr.length) {
                    return null;
                }
                if (fileArr == null) {
                    fileArr = file.listFiles();
                    this.fileList = fileArr;
                    if (fileArr == null || fileArr.length == 0) {
                        return null;
                    }
                }
                fileArr.getClass();
                int i = this.fileIndex;
                this.fileIndex = i + 1;
                return fileArr[i];
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public abstract /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[FileWalkDirection.values().length];
                try {
                    iArr[FileWalkDirection.TOP_DOWN.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[FileWalkDirection.BOTTOM_UP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public FileTreeWalkIterator() {
            ArrayDeque arrayDeque = new ArrayDeque();
            this.state = arrayDeque;
            File file = (File) FileTreeWalk.this.start;
            if (file.isDirectory()) {
                arrayDeque.push(directoryState(file));
            } else if (file.isFile()) {
                arrayDeque.push(new SingleFileState(file));
            } else {
                super.state = 2;
            }
        }

        @Override // kotlin.collections.AbstractIterator
        public final void computeNext() {
            File file;
            File step;
            while (true) {
                ArrayDeque arrayDeque = this.state;
                WalkState walkState = (WalkState) arrayDeque.peek();
                if (walkState == null) {
                    file = null;
                    break;
                }
                step = walkState.step();
                if (step == null) {
                    arrayDeque.pop();
                } else if (step.equals(walkState.root) || !step.isDirectory() || arrayDeque.size() >= Integer.MAX_VALUE) {
                    break;
                } else {
                    arrayDeque.push(directoryState(step));
                }
            }
            file = step;
            if (file == null) {
                super.state = 2;
            } else {
                this.nextValue = file;
                super.state = 1;
            }
        }

        public final DirectoryState directoryState(File file) {
            int i = WhenMappings.$EnumSwitchMapping$0[((FileWalkDirection) FileTreeWalk.this.direction).ordinal()];
            if (i == 1) {
                return new TopDownDirectoryState(file);
            }
            if (i == 2) {
                return new BottomUpDirectoryState(file);
            }
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return null;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class WalkState {
        public final File root;

        public WalkState(File file) {
            this.root = file;
        }

        public abstract File step();
    }

    public FileTreeWalk(Sequence sequence, Function1 function1) {
        this.$r8$classId = 4;
        sequence.getClass();
        this.start = sequence;
        this.direction = function1;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        int i = this.$r8$classId;
        Object obj = this.direction;
        Object obj2 = this.start;
        switch (i) {
            case 0:
                return new FileTreeWalkIterator();
            case 1:
                return new SubSequence$iterator$1(this);
            case 2:
                Collection convertToListIfNotCollection = CollectionsKt.convertToListIfNotCollection((Iterable) obj2);
                LinesSequence linesSequence = (LinesSequence) obj;
                return convertToListIfNotCollection.isEmpty() ? ((Iterable) linesSequence.reader).iterator() : new FilteringSequence$iterator$1(new FilteringSequence(linesSequence, false, new SequencesKt___SequencesKt$minus$3$$ExternalSyntheticLambda0(0, convertToListIfNotCollection)));
            case 3:
                TransformingSequence transformingSequence = (TransformingSequence) obj2;
                ArrayList arrayList = new ArrayList();
                Iterator it = transformingSequence.sequence.iterator();
                while (it.hasNext()) {
                    arrayList.add(transformingSequence.transformer.invoke(it.next()));
                }
                CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, (RandomClient$getRandomPages$$inlined$sortedBy$1) obj);
                return arrayList.iterator();
            case 4:
                return new FilteringSequence$iterator$1(this);
            default:
                return new DelimitedRangesSequence$iterator$1(this);
        }
    }

    public /* synthetic */ FileTreeWalk(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.start = obj;
        this.direction = obj2;
    }

    public FileTreeWalk(CharSequence charSequence, Function2 function2) {
        this.$r8$classId = 5;
        charSequence.getClass();
        this.start = charSequence;
        this.direction = function2;
    }
}
