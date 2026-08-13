// Decompiles every function in the imported binary and writes each function's
// decompiled C body to a file (or stdout if no path arg is given). The first
// script argument is the output file path. Output format is:
//   FUNC <function-name>
//   <decompiled C, one line per source line>
// Parsed by src/static/native.py ghidra_decompile(). Function-body text is fed
// back through the native signature matcher so technique-level calls (ptrace,
// fork, root-check dispatch) that readelf/strings missed because they live
// inside an opaque function are still seen.
// @category Analysis
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.listing.Program;

public class DumpFunctions extends GhidraScript {
    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        java.io.PrintWriter out = args.length > 0
            ? new java.io.PrintWriter(new java.io.FileWriter(args[0]))
            : new java.io.PrintWriter(System.out, true);

        Program program = getCurrentProgram();
        DecompInterface decomp = new DecompInterface();
        decomp.setSimplificationStyle("decompile");
        decomp.openProgram(program);
        FunctionIterator fns = program.getFunctionManager().getFunctions(true);
        while (fns.hasNext()) {
            Function fn = fns.next();
            if (fn == null || fn.getBody() == null || fn.getBody().isEmpty()) {
                continue;
            }
            DecompileResults res = decomp.decompileFunction(fn, 120, monitor);
            if (res == null || !res.decompileCompleted()) {
                continue;
            }
            out.println("FUNC " + fn.getName());
            out.println(res.getDecompiledFunction().getC());
        }
        decomp.dispose();
        if (args.length > 0) {
            out.flush();
            out.close();
        }
    }
}
