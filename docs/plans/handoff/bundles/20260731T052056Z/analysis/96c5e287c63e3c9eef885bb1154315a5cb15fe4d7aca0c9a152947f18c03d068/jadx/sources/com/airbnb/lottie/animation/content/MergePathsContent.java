package com.airbnb.lottie.animation.content;

import android.graphics.Matrix;
import android.graphics.Path;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.content.MergePaths;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MergePathsContent implements PathContent, GreedyContent {
    public final MergePaths mergePaths;
    public final Path firstPath = new Path();
    public final Path remainderPath = new Path();
    public final Path path = new Path();
    public final ArrayList pathContents = new ArrayList();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.airbnb.lottie.animation.content.MergePathsContent$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode;

        static {
            int[] iArr = new int[MergePaths.MergePathsMode.values().length];
            $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode = iArr;
            try {
                iArr[MergePaths.MergePathsMode.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[MergePaths.MergePathsMode.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[MergePaths.MergePathsMode.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[MergePaths.MergePathsMode.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[MergePaths.MergePathsMode.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public MergePathsContent(MergePaths mergePaths) {
        this.mergePaths = mergePaths;
    }

    @Override // com.airbnb.lottie.animation.content.GreedyContent
    public final void absorbContent(ListIterator listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            Content content = (Content) listIterator.previous();
            if (content instanceof PathContent) {
                this.pathContents.add((PathContent) content);
                listIterator.remove();
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public final Path getPath() {
        Path path = this.path;
        path.reset();
        MergePaths mergePaths = this.mergePaths;
        if (!mergePaths.hidden) {
            int i = AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[mergePaths.mode.ordinal()];
            if (i == 1) {
                int i2 = 0;
                while (true) {
                    ArrayList arrayList = this.pathContents;
                    if (i2 >= arrayList.size()) {
                        break;
                    }
                    path.addPath(((PathContent) arrayList.get(i2)).getPath());
                    i2++;
                }
            } else {
                if (i == 2) {
                    opFirstPathWithRest(Path.Op.UNION);
                    return path;
                }
                if (i == 3) {
                    opFirstPathWithRest(Path.Op.REVERSE_DIFFERENCE);
                    return path;
                }
                if (i == 4) {
                    opFirstPathWithRest(Path.Op.INTERSECT);
                    return path;
                }
                if (i == 5) {
                    opFirstPathWithRest(Path.Op.XOR);
                    return path;
                }
            }
        }
        return path;
    }

    public final void opFirstPathWithRest(Path.Op op) {
        Path path = this.remainderPath;
        path.reset();
        Path path2 = this.firstPath;
        path2.reset();
        ArrayList arrayList = this.pathContents;
        for (int size = arrayList.size() - 1; size >= 1; size--) {
            PathContent pathContent = (PathContent) arrayList.get(size);
            if (pathContent instanceof ContentGroup) {
                ContentGroup contentGroup = (ContentGroup) pathContent;
                ArrayList arrayList2 = (ArrayList) contentGroup.getPathList();
                for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                    Path path3 = ((PathContent) arrayList2.get(size2)).getPath();
                    Matrix matrix = contentGroup.matrix;
                    TransformKeyframeAnimation transformKeyframeAnimation = contentGroup.transformAnimation;
                    if (transformKeyframeAnimation != null) {
                        matrix = transformKeyframeAnimation.getMatrix();
                    } else {
                        matrix.reset();
                    }
                    path3.transform(matrix);
                    path.addPath(path3);
                }
            } else {
                path.addPath(pathContent.getPath());
            }
        }
        int i = 0;
        PathContent pathContent2 = (PathContent) arrayList.get(0);
        if (pathContent2 instanceof ContentGroup) {
            ContentGroup contentGroup2 = (ContentGroup) pathContent2;
            List pathList = contentGroup2.getPathList();
            while (true) {
                ArrayList arrayList3 = (ArrayList) pathList;
                if (i >= arrayList3.size()) {
                    break;
                }
                Path path4 = ((PathContent) arrayList3.get(i)).getPath();
                Matrix matrix2 = contentGroup2.matrix;
                TransformKeyframeAnimation transformKeyframeAnimation2 = contentGroup2.transformAnimation;
                if (transformKeyframeAnimation2 != null) {
                    matrix2 = transformKeyframeAnimation2.getMatrix();
                } else {
                    matrix2.reset();
                }
                path4.transform(matrix2);
                path2.addPath(path4);
                i++;
            }
        } else {
            path2.set(pathContent2.getPath());
        }
        this.path.op(path2, path, op);
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final void setContents(List list, List list2) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.pathContents;
            if (i >= arrayList.size()) {
                return;
            }
            ((PathContent) arrayList.get(i)).setContents(list, list2);
            i++;
        }
    }
}
