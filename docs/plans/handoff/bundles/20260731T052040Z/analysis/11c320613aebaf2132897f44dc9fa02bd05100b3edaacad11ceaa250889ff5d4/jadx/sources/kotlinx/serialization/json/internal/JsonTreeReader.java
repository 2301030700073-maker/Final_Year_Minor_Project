package kotlinx.serialization.json.internal;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.DeepRecursiveScopeImpl;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class JsonTreeReader {
    public final AbstractJsonLexer lexer;
    public int stackDepth;

    public JsonTreeReader(JsonConfiguration jsonConfiguration, AbstractJsonLexer abstractJsonLexer) {
        this.lexer = abstractJsonLexer;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$readObject(kotlinx.serialization.json.internal.JsonTreeReader r11, kotlin.DeepRecursiveScopeImpl r12, kotlin.coroutines.jvm.internal.BaseContinuationImpl r13) {
        /*
            kotlinx.serialization.json.internal.AbstractJsonLexer r0 = r11.lexer
            boolean r1 = r13 instanceof kotlinx.serialization.json.internal.JsonTreeReader$readObject$2
            if (r1 == 0) goto L15
            r1 = r13
            kotlinx.serialization.json.internal.JsonTreeReader$readObject$2 r1 = (kotlinx.serialization.json.internal.JsonTreeReader$readObject$2) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.label = r2
            goto L1a
        L15:
            kotlinx.serialization.json.internal.JsonTreeReader$readObject$2 r1 = new kotlinx.serialization.json.internal.JsonTreeReader$readObject$2
            r1.<init>(r11, r13)
        L1a:
            java.lang.Object r13 = r1.result
            int r2 = r1.label
            r3 = 0
            r4 = 6
            r5 = 0
            r6 = 7
            r7 = 4
            r8 = 1
            if (r2 == 0) goto L5f
            if (r2 != r8) goto L59
            int r11 = r1.I$0
            java.lang.Object r12 = r1.L$3
            java.lang.String r12 = (java.lang.String) r12
            java.lang.Object r0 = r1.L$2
            java.util.LinkedHashMap r0 = (java.util.LinkedHashMap) r0
            java.lang.Object r2 = r1.L$1
            kotlinx.serialization.json.internal.JsonTreeReader r2 = (kotlinx.serialization.json.internal.JsonTreeReader) r2
            java.lang.Object r9 = r1.L$0
            kotlin.DeepRecursiveScopeImpl r9 = (kotlin.DeepRecursiveScopeImpl) r9
            kotlin.ResultKt.throwOnFailure(r13)
            kotlinx.serialization.json.JsonElement r13 = (kotlinx.serialization.json.JsonElement) r13
            r0.put(r12, r13)
            kotlinx.serialization.json.internal.AbstractJsonLexer r12 = r2.lexer
            byte r12 = r12.consumeNextToken()
            if (r12 == r7) goto L55
            if (r12 != r6) goto L4d
            goto L9d
        L4d:
            kotlinx.serialization.json.internal.AbstractJsonLexer r11 = r2.lexer
            java.lang.String r12 = "Expected end of the object or comma"
            kotlinx.serialization.json.internal.AbstractJsonLexer.fail$default(r11, r12, r5, r3, r4)
            throw r3
        L55:
            r13 = r12
            r12 = r11
            r11 = r2
            goto L73
        L59:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r11)
            return r3
        L5f:
            kotlin.ResultKt.throwOnFailure(r13)
            byte r13 = r0.consumeNextToken(r4)
            byte r0 = r0.peekNextToken()
            if (r0 == r7) goto Lb3
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            r9 = r12
            r12 = r5
        L73:
            kotlinx.serialization.json.internal.AbstractJsonLexer r2 = r11.lexer
            boolean r10 = r2.canConsumeValue()
            if (r10 == 0) goto L9b
            java.lang.String r3 = r2.consumeString()
            r4 = 5
            r2.consumeNextToken(r4)
            r1.L$0 = r9
            r1.L$1 = r11
            r1.L$2 = r0
            r1.L$3 = r3
            r1.I$0 = r12
            r1.B$0 = r13
            r1.I$1 = r5
            r1.label = r8
            r9.getClass()
            r9.cont = r1
            kotlin.coroutines.intrinsics.CoroutineSingletons r11 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            return r11
        L9b:
            r2 = r11
            r12 = r13
        L9d:
            kotlinx.serialization.json.internal.AbstractJsonLexer r11 = r2.lexer
            if (r12 != r4) goto La5
            r11.consumeNextToken(r6)
            goto La7
        La5:
            if (r12 == r7) goto Lad
        La7:
            kotlinx.serialization.json.JsonObject r11 = new kotlinx.serialization.json.JsonObject
            r11.<init>(r0)
            return r11
        Lad:
            java.lang.String r12 = "object"
            kotlinx.serialization.json.internal.WriteModeKt.invalidTrailingComma(r11, r12)
            throw r3
        Lb3:
            kotlinx.serialization.json.internal.AbstractJsonLexer r11 = r11.lexer
            java.lang.String r12 = "Unexpected leading comma"
            kotlinx.serialization.json.internal.AbstractJsonLexer.fail$default(r11, r12, r5, r3, r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.JsonTreeReader.access$readObject(kotlinx.serialization.json.internal.JsonTreeReader, kotlin.DeepRecursiveScopeImpl, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public final JsonElement read() {
        JsonElement jsonObject;
        Object obj;
        AbstractJsonLexer abstractJsonLexer = this.lexer;
        byte peekNextToken = abstractJsonLexer.peekNextToken();
        if (peekNextToken == 1) {
            return readValue(true);
        }
        if (peekNextToken == 0) {
            return readValue(false);
        }
        if (peekNextToken != 6) {
            if (peekNextToken == 8) {
                return readArray();
            }
            AbstractJsonLexer.fail$default(abstractJsonLexer, "Cannot read Json element because of unexpected ".concat(WriteModeKt.tokenDescription(peekNextToken)), 0, null, 6);
            throw null;
        }
        int i = this.stackDepth + 1;
        this.stackDepth = i;
        if (i == 200) {
            JsonTreeReader$readDeepRecursive$1 jsonTreeReader$readDeepRecursive$1 = new JsonTreeReader$readDeepRecursive$1(this, null);
            DeepRecursiveScopeImpl deepRecursiveScopeImpl = new DeepRecursiveScopeImpl();
            deepRecursiveScopeImpl.function = jsonTreeReader$readDeepRecursive$1;
            deepRecursiveScopeImpl.cont = deepRecursiveScopeImpl;
            CoroutineSingletons coroutineSingletons = ResultKt.UNDEFINED_RESULT;
            deepRecursiveScopeImpl.result = coroutineSingletons;
            while (true) {
                obj = deepRecursiveScopeImpl.result;
                Continuation continuation = deepRecursiveScopeImpl.cont;
                if (continuation == null) {
                    break;
                }
                if (Intrinsics.areEqual(coroutineSingletons, obj)) {
                    try {
                        JsonTreeReader$readDeepRecursive$1 jsonTreeReader$readDeepRecursive$12 = deepRecursiveScopeImpl.function;
                        Unit unit = Unit.INSTANCE;
                        TypeIntrinsics.beforeCheckcastToFunctionOfArity(3, jsonTreeReader$readDeepRecursive$12);
                        Object invoke = jsonTreeReader$readDeepRecursive$12.invoke(deepRecursiveScopeImpl, unit, continuation);
                        if (invoke != CoroutineSingletons.COROUTINE_SUSPENDED) {
                            continuation.resumeWith(invoke);
                        }
                    } catch (Throwable th) {
                        continuation.resumeWith(new Result.Failure(th));
                    }
                } else {
                    deepRecursiveScopeImpl.result = coroutineSingletons;
                    continuation.resumeWith(obj);
                }
            }
            ResultKt.throwOnFailure(obj);
            jsonObject = (JsonElement) obj;
        } else {
            byte consumeNextToken = abstractJsonLexer.consumeNextToken((byte) 6);
            if (abstractJsonLexer.peekNextToken() == 4) {
                AbstractJsonLexer.fail$default(abstractJsonLexer, "Unexpected leading comma", 0, null, 6);
                throw null;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            while (true) {
                if (!abstractJsonLexer.canConsumeValue()) {
                    break;
                }
                String consumeString = abstractJsonLexer.consumeString();
                abstractJsonLexer.consumeNextToken((byte) 5);
                linkedHashMap.put(consumeString, read());
                consumeNextToken = abstractJsonLexer.consumeNextToken();
                if (consumeNextToken != 4) {
                    if (consumeNextToken != 7) {
                        AbstractJsonLexer.fail$default(abstractJsonLexer, "Expected end of the object or comma", 0, null, 6);
                        throw null;
                    }
                }
            }
            if (consumeNextToken == 6) {
                abstractJsonLexer.consumeNextToken((byte) 7);
            } else if (consumeNextToken == 4) {
                WriteModeKt.invalidTrailingComma(abstractJsonLexer, "object");
                throw null;
            }
            jsonObject = new JsonObject(linkedHashMap);
        }
        this.stackDepth--;
        return jsonObject;
    }

    public final JsonArray readArray() {
        AbstractJsonLexer abstractJsonLexer = this.lexer;
        byte consumeNextToken = abstractJsonLexer.consumeNextToken();
        if (abstractJsonLexer.peekNextToken() == 4) {
            AbstractJsonLexer.fail$default(abstractJsonLexer, "Unexpected leading comma", 0, null, 6);
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        while (abstractJsonLexer.canConsumeValue()) {
            arrayList.add(read());
            consumeNextToken = abstractJsonLexer.consumeNextToken();
            if (consumeNextToken != 4) {
                boolean z = consumeNextToken == 9;
                int i = abstractJsonLexer.currentPosition;
                if (!z) {
                    AbstractJsonLexer.fail$default(abstractJsonLexer, "Expected end of the array or comma", i, null, 4);
                    throw null;
                }
            }
        }
        if (consumeNextToken == 8) {
            abstractJsonLexer.consumeNextToken((byte) 9);
        } else if (consumeNextToken == 4) {
            WriteModeKt.invalidTrailingComma(abstractJsonLexer, "array");
            throw null;
        }
        return new JsonArray(arrayList);
    }

    public final JsonPrimitive readValue(boolean z) {
        AbstractJsonLexer abstractJsonLexer = this.lexer;
        String consumeStringLenient = !z ? abstractJsonLexer.consumeStringLenient() : abstractJsonLexer.consumeString();
        return (z || !Intrinsics.areEqual(consumeStringLenient, "null")) ? new JsonLiteral(consumeStringLenient, z) : JsonNull.INSTANCE;
    }
}
